// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../assessment/models/enums.dart';

part 'learning.freezed.dart';
part 'learning.g.dart';

@freezed
abstract class LearningModule with _$LearningModule {
  const factory LearningModule({
    required String id,
    required Skill skill,
    required CEFR cefr,
    required String title,
    @Default(<String>[]) List<String> prerequisites,
    @Default(<String>[]) List<String> activities,
  }) = _LearningModule;

  factory LearningModule.fromJson(Map<String, dynamic> json) => _$LearningModuleFromJson(json);
}

@freezed
abstract class LearningPath with _$LearningPath {
  const factory LearningPath({
    required String id,
    @JsonKey(toJson: _modulesToJson) @Default(<LearningModule>[]) List<LearningModule> modules,
    @Default(<String>[]) List<String> lockedModules,
  }) = _LearningPath;

  factory LearningPath.fromJson(Map<String, dynamic> json) => _$LearningPathFromJson(json);
}

List<Map<String, dynamic>> _modulesToJson(List<LearningModule> list) => list.map((e) => e.toJson()).toList();


