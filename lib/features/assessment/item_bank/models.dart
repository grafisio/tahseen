import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/enums.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
abstract class IrtParam with _$IrtParam {
  const factory IrtParam({
    required double a,
    required double b,
    double? c,
  }) = _IrtParam;

  factory IrtParam.fromJson(Map<String, dynamic> json) => _$IrtParamFromJson(json);
}

@freezed
abstract class ItemMetadata with _$ItemMetadata {
  const factory ItemMetadata({
    required CEFR cefr,
    required IrtParam irt,
    @Default(<String>[]) List<String> tags,
    required int estimatedTimeSec,
  }) = _ItemMetadata;

  factory ItemMetadata.fromJson(Map<String, dynamic> json) => _$ItemMetadataFromJson(json);
}

@freezed
abstract class AssessmentItem with _$AssessmentItem {
  const factory AssessmentItem({
    required String id,
    required Skill skill,
    // stem can be String or structured object (for speaking/writing)
    required dynamic stem,
    List<String>? options,
    required String answerKey,
    required ItemMetadata metadata,
  }) = _AssessmentItem;

  factory AssessmentItem.fromJson(Map<String, dynamic> json) => _$AssessmentItemFromJson(json);
}


