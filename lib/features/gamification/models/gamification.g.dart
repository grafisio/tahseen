// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GamificationState _$GamificationStateFromJson(Map<String, dynamic> json) =>
    _GamificationState(
      xp: (json['xp'] as num?)?.toInt() ?? 0,
      badges:
          (json['badges'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$BadgeEnumMap, e))
              .toList() ??
          const <Badge>[],
      currentStreakDays: (json['currentStreakDays'] as num?)?.toInt() ?? 0,
      lastActiveAt: json['lastActiveAt'] == null
          ? null
          : DateTime.parse(json['lastActiveAt'] as String),
    );

Map<String, dynamic> _$GamificationStateToJson(_GamificationState instance) =>
    <String, dynamic>{
      'xp': instance.xp,
      'badges': instance.badges.map((e) => _$BadgeEnumMap[e]!).toList(),
      'currentStreakDays': instance.currentStreakDays,
      'lastActiveAt': instance.lastActiveAt?.toIso8601String(),
    };

const _$BadgeEnumMap = {
  Badge.firstSteps: 'firstSteps',
  Badge.tenSessions: 'tenSessions',
  Badge.hundredXp: 'hundredXp',
  Badge.sevenDayStreak: 'sevenDayStreak',
};
