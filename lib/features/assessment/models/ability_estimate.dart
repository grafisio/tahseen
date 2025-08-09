import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums.dart';

part 'ability_estimate.freezed.dart';
part 'ability_estimate.g.dart';

@freezed
abstract class AbilityEstimate with _$AbilityEstimate {
  const factory AbilityEstimate({
    required Skill skill,
    required double theta,
    required double se,
    required DateTime updatedAt,
  }) = _AbilityEstimate;

  factory AbilityEstimate.fromJson(Map<String, dynamic> json) => _$AbilityEstimateFromJson(json);
}


