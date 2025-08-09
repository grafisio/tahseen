// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LearningModule _$LearningModuleFromJson(Map<String, dynamic> json) =>
    _LearningModule(
      id: json['id'] as String,
      skill: $enumDecode(_$SkillEnumMap, json['skill']),
      cefr: $enumDecode(_$CEFREnumMap, json['cefr']),
      title: json['title'] as String,
      prerequisites:
          (json['prerequisites'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      activities:
          (json['activities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$LearningModuleToJson(_LearningModule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skill': _$SkillEnumMap[instance.skill]!,
      'cefr': _$CEFREnumMap[instance.cefr]!,
      'title': instance.title,
      'prerequisites': instance.prerequisites,
      'activities': instance.activities,
    };

const _$SkillEnumMap = {
  Skill.listening: 'listening',
  Skill.speaking: 'speaking',
  Skill.reading: 'reading',
  Skill.writing: 'writing',
};

const _$CEFREnumMap = {
  CEFR.A1: 'A1',
  CEFR.A2: 'A2',
  CEFR.B1: 'B1',
  CEFR.B2: 'B2',
  CEFR.C1: 'C1',
  CEFR.C2: 'C2',
};

_LearningPath _$LearningPathFromJson(Map<String, dynamic> json) =>
    _LearningPath(
      id: json['id'] as String,
      modules:
          (json['modules'] as List<dynamic>?)
              ?.map((e) => LearningModule.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LearningModule>[],
      lockedModules:
          (json['lockedModules'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$LearningPathToJson(_LearningPath instance) =>
    <String, dynamic>{
      'id': instance.id,
      'modules': _modulesToJson(instance.modules),
      'lockedModules': instance.lockedModules,
    };
