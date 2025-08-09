import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_response.freezed.dart';
part 'assessment_response.g.dart';

@freezed
abstract class AssessmentResponse with _$AssessmentResponse {
  const factory AssessmentResponse({
    required String itemId,
    required String chosen,
    required bool correct,
    required int timeMs,
    required DateTime timestamp,
  }) = _AssessmentResponse;

  factory AssessmentResponse.fromJson(Map<String, dynamic> json) => _$AssessmentResponseFromJson(json);
}


