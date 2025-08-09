// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSession _$UserSessionFromJson(Map<String, dynamic> json) => _UserSession(
  userId: json['userId'] as String,
  displayName: json['displayName'] as String,
  isOnboardingCompleted: json['isOnboardingCompleted'] as bool? ?? false,
  currentPathId: json['currentPathId'] as String?,
);

Map<String, dynamic> _$UserSessionToJson(_UserSession instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'isOnboardingCompleted': instance.isOnboardingCompleted,
      'currentPathId': instance.currentPathId,
    };
