// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_estimate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AbilityEstimate _$AbilityEstimateFromJson(Map<String, dynamic> json) =>
    _AbilityEstimate(
      skill: $enumDecode(_$SkillEnumMap, json['skill']),
      theta: (json['theta'] as num).toDouble(),
      se: (json['se'] as num).toDouble(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AbilityEstimateToJson(_AbilityEstimate instance) =>
    <String, dynamic>{
      'skill': _$SkillEnumMap[instance.skill]!,
      'theta': instance.theta,
      'se': instance.se,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$SkillEnumMap = {
  Skill.listening: 'listening',
  Skill.speaking: 'speaking',
  Skill.reading: 'reading',
  Skill.writing: 'writing',
};
