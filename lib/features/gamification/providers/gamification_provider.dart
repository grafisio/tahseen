import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/gamification.dart';

class GamificationNotifier extends StateNotifier<GamificationState> {
  GamificationNotifier() : super(const GamificationState());

  void addXp(int amount) {
    final xp = state.xp + amount;
    state = state.copyWith(xp: xp);
    if (xp >= 100 && !state.badges.contains(Badge.hundredXp)) {
      addBadge(Badge.hundredXp);
    }
  }

  void addBadge(Badge badge) {
    if (!state.badges.contains(badge)) {
      state = state.copyWith(badges: [...state.badges, badge]);
    }
  }

  void markActiveNow() {
    final now = DateTime.now();
    final last = state.lastActiveAt;
    int streak = state.currentStreakDays;
    if (last != null) {
      final diff = now.difference(DateTime(last.year, last.month, last.day));
      if (diff.inDays == 1) {
        streak += 1;
      } else if (diff.inDays > 1) {
        streak = 1; // reset to 1 (today)
      }
    } else {
      streak = 1;
    }
    state = state.copyWith(currentStreakDays: streak, lastActiveAt: now);
    if (streak >= 7 && !state.badges.contains(Badge.sevenDayStreak)) {
      addBadge(Badge.sevenDayStreak);
    }
  }
}

final gamificationProvider = StateNotifierProvider<GamificationNotifier, GamificationState>((ref) {
  return GamificationNotifier();
});


