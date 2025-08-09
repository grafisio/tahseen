import 'package:freezed_annotation/freezed_annotation.dart';
import '../../assessment/models/enums.dart';

part 'mce_models.freezed.dart';
part 'mce_models.g.dart';

@freezed
abstract class MasteryCheckConfig with _$MasteryCheckConfig {
  const factory MasteryCheckConfig({
    required String moduleId,
    required Skill skill,
    @Default(3) int numQuestions,
    @Default(80.0) double passThreshold, // percent
    @Default(1) int maxCriticalErrors,
  }) = _MasteryCheckConfig;

  factory MasteryCheckConfig.fromJson(Map<String, dynamic> json) => _$MasteryCheckConfigFromJson(json);
}

@freezed
abstract class RemedialPackage with _$RemedialPackage {
  const factory RemedialPackage({
    required String moduleId,
    @Default(<String>[]) List<String> exercises,
    @Default('') String summary,
  }) = _RemedialPackage;

  factory RemedialPackage.fromJson(Map<String, dynamic> json) => _$RemedialPackageFromJson(json);
}

@freezed
abstract class MasteryCheckResult with _$MasteryCheckResult {
  const factory MasteryCheckResult({
    required String moduleId,
    required int total,
    required int correct,
    required double score,
    required bool passed,
  }) = _MasteryCheckResult;

  factory MasteryCheckResult.fromJson(Map<String, dynamic> json) => _$MasteryCheckResultFromJson(json);
}


