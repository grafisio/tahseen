// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IrtParam _$IrtParamFromJson(Map<String, dynamic> json) => _IrtParam(
  a: (json['a'] as num).toDouble(),
  b: (json['b'] as num).toDouble(),
  c: (json['c'] as num?)?.toDouble(),
);

Map<String, dynamic> _$IrtParamToJson(_IrtParam instance) => <String, dynamic>{
  'a': instance.a,
  'b': instance.b,
  'c': instance.c,
};

_ItemMetadata _$ItemMetadataFromJson(Map<String, dynamic> json) =>
    _ItemMetadata(
      cefr: $enumDecode(_$CEFREnumMap, json['cefr']),
      irt: IrtParam.fromJson(json['irt'] as Map<String, dynamic>),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      estimatedTimeSec: (json['estimatedTimeSec'] as num).toInt(),
    );

Map<String, dynamic> _$ItemMetadataToJson(_ItemMetadata instance) =>
    <String, dynamic>{
      'cefr': _$CEFREnumMap[instance.cefr]!,
      'irt': instance.irt,
      'tags': instance.tags,
      'estimatedTimeSec': instance.estimatedTimeSec,
    };

const _$CEFREnumMap = {
  CEFR.A1: 'A1',
  CEFR.A2: 'A2',
  CEFR.B1: 'B1',
  CEFR.B2: 'B2',
  CEFR.C1: 'C1',
  CEFR.C2: 'C2',
};

_AssessmentItem _$AssessmentItemFromJson(Map<String, dynamic> json) =>
    _AssessmentItem(
      id: json['id'] as String,
      skill: $enumDecode(_$SkillEnumMap, json['skill']),
      stem: json['stem'],
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      answerKey: json['answerKey'] as String,
      metadata: ItemMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssessmentItemToJson(_AssessmentItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skill': _$SkillEnumMap[instance.skill]!,
      'stem': instance.stem,
      'options': instance.options,
      'answerKey': instance.answerKey,
      'metadata': instance.metadata,
    };

const _$SkillEnumMap = {
  Skill.listening: 'listening',
  Skill.speaking: 'speaking',
  Skill.reading: 'reading',
  Skill.writing: 'writing',
};
