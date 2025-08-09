// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemMetadata _$ItemMetadataFromJson(Map<String, dynamic> json) =>
    _ItemMetadata(
      cefr: $enumDecode(_$CEFREnumMap, json['cefr']),
      aParam: (json['a'] as num).toDouble(),
      bParam: (json['b'] as num).toDouble(),
      cParam: (json['c'] as num).toDouble(),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
    );

Map<String, dynamic> _$ItemMetadataToJson(_ItemMetadata instance) =>
    <String, dynamic>{
      'cefr': _$CEFREnumMap[instance.cefr]!,
      'a': instance.aParam,
      'b': instance.bParam,
      'c': instance.cParam,
      'tags': instance.tags,
    };

const _$CEFREnumMap = {
  CEFR.A1: 'A1',
  CEFR.A2: 'A2',
  CEFR.B1: 'B1',
  CEFR.B2: 'B2',
  CEFR.C1: 'C1',
  CEFR.C2: 'C2',
};

_Item _$ItemFromJson(Map<String, dynamic> json) => _Item(
  id: json['id'] as String,
  skill: $enumDecode(_$SkillEnumMap, json['skill']),
  stem: json['stem'] as String,
  options: (json['options'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  answerKey: json['answerKey'] as String?,
  metadata: ItemMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
  'id': instance.id,
  'skill': _$SkillEnumMap[instance.skill]!,
  'stem': instance.stem,
  'options': instance.options,
  'answerKey': instance.answerKey,
  'metadata': _metadataToJson(instance.metadata),
};

const _$SkillEnumMap = {
  Skill.listening: 'listening',
  Skill.speaking: 'speaking',
  Skill.reading: 'reading',
  Skill.writing: 'writing',
};
