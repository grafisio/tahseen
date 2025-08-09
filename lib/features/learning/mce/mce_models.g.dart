// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mce_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MasteryCheckConfig _$MasteryCheckConfigFromJson(Map<String, dynamic> json) =>
    _MasteryCheckConfig(
      moduleId: json['moduleId'] as String,
      skill: $enumDecode(_$SkillEnumMap, json['skill']),
      numQuestions: (json['numQuestions'] as num?)?.toInt() ?? 3,
      passThreshold: (json['passThreshold'] as num?)?.toDouble() ?? 80.0,
      maxCriticalErrors: (json['maxCriticalErrors'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$MasteryCheckConfigToJson(_MasteryCheckConfig instance) =>
    <String, dynamic>{
      'moduleId': instance.moduleId,
      'skill': _$SkillEnumMap[instance.skill]!,
      'numQuestions': instance.numQuestions,
      'passThreshold': instance.passThreshold,
      'maxCriticalErrors': instance.maxCriticalErrors,
    };

const _$SkillEnumMap = {
  Skill.listening: 'listening',
  Skill.speaking: 'speaking',
  Skill.reading: 'reading',
  Skill.writing: 'writing',
};

_RemedialPackage _$RemedialPackageFromJson(Map<String, dynamic> json) =>
    _RemedialPackage(
      moduleId: json['moduleId'] as String,
      exercises:
          (json['exercises'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      summary: json['summary'] as String? ?? '',
    );

Map<String, dynamic> _$RemedialPackageToJson(_RemedialPackage instance) =>
    <String, dynamic>{
      'moduleId': instance.moduleId,
      'exercises': instance.exercises,
      'summary': instance.summary,
    };

_MasteryCheckResult _$MasteryCheckResultFromJson(Map<String, dynamic> json) =>
    _MasteryCheckResult(
      moduleId: json['moduleId'] as String,
      total: (json['total'] as num).toInt(),
      correct: (json['correct'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      passed: json['passed'] as bool,
    );

Map<String, dynamic> _$MasteryCheckResultToJson(_MasteryCheckResult instance) =>
    <String, dynamic>{
      'moduleId': instance.moduleId,
      'total': instance.total,
      'correct': instance.correct,
      'score': instance.score,
      'passed': instance.passed,
    };
