// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adaptive_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdaptiveRecord _$AdaptiveRecordFromJson(Map<String, dynamic> json) =>
    _AdaptiveRecord(
      itemId: json['itemId'] as String,
      b: (json['b'] as num).toDouble(),
      responseCorrect: json['responseCorrect'] as bool,
      timeMs: (json['timeMs'] as num).toInt(),
      chosen: json['chosen'] as String?,
      thetaBefore: (json['thetaBefore'] as num).toDouble(),
      thetaAfter: (json['thetaAfter'] as num).toDouble(),
      seAfter: (json['seAfter'] as num).toDouble(),
    );

Map<String, dynamic> _$AdaptiveRecordToJson(_AdaptiveRecord instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'b': instance.b,
      'responseCorrect': instance.responseCorrect,
      'timeMs': instance.timeMs,
      'chosen': instance.chosen,
      'thetaBefore': instance.thetaBefore,
      'thetaAfter': instance.thetaAfter,
      'seAfter': instance.seAfter,
    };

_AdaptiveLog _$AdaptiveLogFromJson(Map<String, dynamic> json) => _AdaptiveLog(
  sessionId: json['sessionId'] as String,
  skill: $enumDecode(_$SkillEnumMap, json['skill']),
  tStart: DateTime.parse(json['tStart'] as String),
  tEnd: json['tEnd'] == null ? null : DateTime.parse(json['tEnd'] as String),
  records:
      (json['records'] as List<dynamic>?)
          ?.map((e) => AdaptiveRecord.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdaptiveRecord>[],
  stopReason: $enumDecodeNullable(_$StopReasonEnumMap, json['stopReason']),
  itemExposureCount:
      (json['itemExposureCount'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const <String, int>{},
);

Map<String, dynamic> _$AdaptiveLogToJson(_AdaptiveLog instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'skill': _$SkillEnumMap[instance.skill]!,
      'tStart': instance.tStart.toIso8601String(),
      'tEnd': instance.tEnd?.toIso8601String(),
      'records': instance.records,
      'stopReason': _$StopReasonEnumMap[instance.stopReason],
      'itemExposureCount': instance.itemExposureCount,
    };

const _$SkillEnumMap = {
  Skill.listening: 'listening',
  Skill.speaking: 'speaking',
  Skill.reading: 'reading',
  Skill.writing: 'writing',
};

const _$StopReasonEnumMap = {
  StopReason.none: 'none',
  StopReason.seTarget: 'seTarget',
  StopReason.timeUp: 'timeUp',
  StopReason.maxItems: 'maxItems',
};
