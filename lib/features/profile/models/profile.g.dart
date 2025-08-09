// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
  userId: json['userId'] as String,
  displayName: json['displayName'] as String,
  goal: json['goal'] as String? ?? '',
  preferences:
      (json['preferences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
);

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
  'userId': instance.userId,
  'displayName': instance.displayName,
  'goal': instance.goal,
  'preferences': instance.preferences,
};
