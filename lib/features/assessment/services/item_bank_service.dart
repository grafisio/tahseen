import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/enums.dart';
import '../models/item.dart';

abstract class ItemBankService {
  Future<List<Item>> loadBySkill(Skill skill);

  // Utility: sample items near theta within margin, excluding servedIds
  Future<List<Item>> sampleChallenging({
    required Skill skill,
    required double theta,
    double margin = 0.5,
    int maxItems = 5,
    Set<String> excludeIds = const {},
  });
}

class LocalAssetItemBankService implements ItemBankService {
  const LocalAssetItemBankService();

  @override
  Future<List<Item>> loadBySkill(Skill skill) async {
    final path = 'assets/json/${skill.name}.json';
    final raw = await rootBundle.loadString(path);
    final List<dynamic> data = json.decode(raw) as List<dynamic>;
    return data.map((e) => Item.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<List<Item>> sampleChallenging({required Skill skill, required double theta, double margin = 0.5, int maxItems = 5, Set<String> excludeIds = const {}}) async {
    final all = await loadBySkill(skill);
    final filtered = all.where((it) {
      final b = it.metadata.bParam;
      return (b >= theta - margin) && (b <= theta + margin) && !excludeIds.contains(it.id);
    }).toList()
      ..sort((a, b) => (a.metadata.bParam - theta).abs().compareTo((b.metadata.bParam - theta).abs()));
    if (filtered.length > maxItems) {
      return filtered.sublist(0, maxItems);
    }
    return filtered;
  }
}


