// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AbilitySnapshot _$AbilitySnapshotFromJson(Map<String, dynamic> json) =>
    _AbilitySnapshot(
      estimates:
          (json['estimates'] as List<dynamic>?)
              ?.map((e) => AbilityEstimate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AbilityEstimate>[],
    );

Map<String, dynamic> _$AbilitySnapshotToJson(_AbilitySnapshot instance) =>
    <String, dynamic>{'estimates': instance.estimates};
