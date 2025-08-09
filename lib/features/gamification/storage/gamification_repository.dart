import 'dart:convert';

import 'package:hive/hive.dart';

import '../models/gamification.dart';

abstract class GamificationRepository {
  Future<void> save(GamificationState state);
  Future<GamificationState?> load();
}

class HiveGamificationRepository implements GamificationRepository {
  HiveGamificationRepository(this._box);
  final Box<String> _box;

  static const String key = 'gamification_state_v1';

  @override
  Future<GamificationState?> load() async {
    final raw = _box.get(key);
    if (raw == null) return null;
    try {
      final map = json.decode(raw) as Map<String, dynamic>;
      return GamificationState.fromJson(map);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> save(GamificationState state) async {
    final raw = json.encode(state.toJson());
    await _box.put(key, raw);
  }
}


