import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;

import '../models/enums.dart';
import 'models.dart';
import 'item_bank_service.dart';

class LinterIssue {
  LinterIssue(this.message, {this.itemId});
  final String message;
  final String? itemId;
  @override
  String toString() => itemId == null ? message : '[$itemId] $message';
}

class ItemBankLinter {
  const ItemBankLinter();

  List<LinterIssue> lint(Iterable<AssessmentItem> items) {
    final issues = <LinterIssue>[];
    // (d) duplicate id
    final seen = <String>{};
    for (final it in items) {
      if (!seen.add(it.id)) {
        issues.add(LinterIssue('duplicate id', itemId: it.id));
      }
      // (b) cefr in list
      final cefr = it.metadata.cefr;
      if (!CEFR.values.contains(cefr)) {
        issues.add(LinterIssue('invalid CEFR', itemId: it.id));
      }
      // (c) stem/options length
      final stemOk = (it.stem is String) ? (it.stem as String).trim().isNotEmpty : true;
      if (!stemOk) issues.add(LinterIssue('empty stem', itemId: it.id));
      if (it.options != null && it.options!.isNotEmpty) {
        if (it.options!.length > 8) issues.add(LinterIssue('too many options', itemId: it.id));
        if (it.options!.any((o) => o.trim().isEmpty)) issues.add(LinterIssue('empty option', itemId: it.id));
      }
      // (e) IRT ranges
      final a = it.metadata.irt.a;
      final b = it.metadata.irt.b;
      final c = it.metadata.irt.c;
      if (a <= 0.5 || a >= 2.5) issues.add(LinterIssue('a out of (0.5,2.5)', itemId: it.id));
      if (b <= -3 || b >= 3) issues.add(LinterIssue('b out of (-3,3)', itemId: it.id));
      if (c != null && (c < 0 || c > 0.35)) issues.add(LinterIssue('c out of [0,0.35]', itemId: it.id));
    }
    return issues;
  }
}

// Simple CLI runner: dart run lib/features/assessment/item_bank/item_bank_linter.dart
Future<void> main(List<String> args) async {
  // optional arg: path pattern or skill/cefr
  final svc = AssetItemBankServiceV2();
  final skills = Skill.values;
  final levels = CEFR.values;
  final linter = const ItemBankLinter();
  int total = 0, totalIssues = 0;
  for (final s in skills) {
    for (final c in levels) {
      try {
        final items = await svc.loadSkillLevel(s, c);
        if (items.isEmpty) continue;
        final issues = linter.lint(items);
        total += items.length;
        totalIssues += issues.length;
        if (issues.isNotEmpty) {
          stdout.writeln('Issues in ${s.name}/${c.name}:');
          for (final i in issues) {
            stdout.writeln(' - ${i.toString()}');
          }
        }
      } catch (_) {
        // ignore missing asset for non-existent level
      }
    }
  }
  stdout.writeln('LINT DONE: $total items checked; $totalIssues issues.');
}


