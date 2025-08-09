import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/enums.dart';
import 'models.dart';

class ItemSchemaException implements Exception {
  ItemSchemaException(this.message);
  final String message;
  @override
  String toString() => 'ItemSchemaException: $message';
}

class ItemBankServiceV2 {
  Future<List<AssessmentItem>> loadSkillLevel(Skill skill, CEFR level) =>
      Future.error(UnsupportedError('loadSkillLevel not implemented'));

  Iterable<AssessmentItem> bySkillAndLevel(Iterable<AssessmentItem> all, Skill skill, CEFR level) sync* {
    for (final it in all) {
      if (it.skill == skill && it.metadata.cefr == level) yield it;
    }
  }
}

class AssetItemBankServiceV2 extends ItemBankServiceV2 {
  AssetItemBankServiceV2({this.brand = 'tahseen'});
  final String brand;

  String _path(Skill s, CEFR c) => 'assets/itembank/${brand}_${s.name}_${c.name}.json';

  @override
  Future<List<AssessmentItem>> loadSkillLevel(Skill skill, CEFR level) async {
    final raw = await rootBundle.loadString(_path(skill, level));
    final data = json.decode(raw);
    if (data is! List) {
      throw ItemSchemaException('Root must be a JSON array');
    }
    final List<AssessmentItem> out = [];
    for (final e in data) {
      try {
        final map = e as Map<String, dynamic>;
        validateMap(map);
        out.add(AssessmentItem.fromJson(map));
      } catch (err) {
        throw ItemSchemaException('Invalid item: $err');
      }
    }
    return out;
  }

  static void validateMap(Map<String, dynamic> map) {
    // id
    final id = map['id'];
    if (id is! String || id.isEmpty) throw 'id must be non-empty string';
    // skill
    final skill = map['skill'];
    if (skill is! String || !Skill.values.map((e) => e.name).contains(skill)) {
      throw 'skill must be one of ${Skill.values.map((e) => e.name).join(',')}';
    }
    // stem: can be String or Map
    final stem = map['stem'];
    if (stem is! String && stem is! Map) throw 'stem must be string or object';
    // options (optional)
    if (map.containsKey('options')) {
      final opts = map['options'];
      if (opts != null && (opts is! List || opts.any((e) => e is! String))) {
        throw 'options must be array of strings';
      }
    }
    // answerKey
    final answerKey = map['answerKey'];
    if (answerKey is! String || answerKey.isEmpty) throw 'answerKey must be string';
    // metadata
    final md = map['metadata'];
    if (md is! Map<String, dynamic>) throw 'metadata must be object';
    // cefr
    final cefr = md['cefr'];
    final allowedCefr = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'];
    if (cefr is! String || !allowedCefr.contains(cefr)) throw 'metadata.cefr invalid';
    // irt
    final irt = md['irt'];
    if (irt is! Map<String, dynamic>) throw 'metadata.irt must be object';
    final num? a = irt['a'] as num?;
    final num? b = irt['b'] as num?;
    final num? c = irt['c'] as num?;
    if (a == null || !a.isFinite || a < 0.6 || a > 2.0) throw 'irt.a out of range [0.6,2.0]';
    if (b == null || !b.isFinite || b < -3 || b > 3) throw 'irt.b out of range [-3,3]';
    if (c != null && (!c.isFinite || c < 0 || c > 0.35)) throw 'irt.c out of range [0,0.35]';
    // tags
    if (md['tags'] != null) {
      final tags = md['tags'];
      if (tags is! List || tags.any((e) => e is! String)) throw 'metadata.tags must be array of strings';
    }
    // estimatedTimeSec
    final ets = md['estimatedTimeSec'];
    if (ets is! num || ets <= 0) throw 'metadata.estimatedTimeSec must be positive number';
  }
}


