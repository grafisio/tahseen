import 'package:freezed_annotation/freezed_annotation.dart';

part 'gamification.freezed.dart';
part 'gamification.g.dart';

enum Badge {
  firstSteps,
  tenSessions,
  hundredXp,
  sevenDayStreak,
}

@freezed
abstract class GamificationState with _$GamificationState {
  const factory GamificationState({
    @Default(0) int xp,
    @Default(<Badge>[]) List<Badge> badges,
    @Default(0) int currentStreakDays,
    DateTime? lastActiveAt,
  }) = _GamificationState;

  factory GamificationState.fromJson(Map<String, dynamic> json) => _$GamificationStateFromJson(json);
}


