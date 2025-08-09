// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssessmentResponse _$AssessmentResponseFromJson(Map<String, dynamic> json) =>
    _AssessmentResponse(
      itemId: json['itemId'] as String,
      chosen: json['chosen'] as String,
      correct: json['correct'] as bool,
      timeMs: (json['timeMs'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$AssessmentResponseToJson(_AssessmentResponse instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'chosen': instance.chosen,
      'correct': instance.correct,
      'timeMs': instance.timeMs,
      'timestamp': instance.timestamp.toIso8601String(),
    };
