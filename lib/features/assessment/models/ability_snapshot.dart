import 'package:freezed_annotation/freezed_annotation.dart';
import 'ability_estimate.dart';

part 'ability_snapshot.freezed.dart';
part 'ability_snapshot.g.dart';

@freezed
abstract class AbilitySnapshot with _$AbilitySnapshot {
  const factory AbilitySnapshot({
    @Default(<AbilityEstimate>[]) List<AbilityEstimate> estimates,
  }) = _AbilitySnapshot;

  factory AbilitySnapshot.fromJson(Map<String, dynamic> json) => _$AbilitySnapshotFromJson(json);
}


