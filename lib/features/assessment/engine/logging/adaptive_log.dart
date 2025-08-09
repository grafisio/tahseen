import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/enums.dart';
import '../../session/assessment_session.dart';

part 'adaptive_log.freezed.dart';
part 'adaptive_log.g.dart';

@freezed
abstract class AdaptiveRecord with _$AdaptiveRecord {
  const factory AdaptiveRecord({
    required String itemId,
    required double b,
    required bool responseCorrect,
    required int timeMs,
    String? chosen,
    required double thetaBefore,
    required double thetaAfter,
    required double seAfter,
  }) = _AdaptiveRecord;

  factory AdaptiveRecord.fromJson(Map<String, dynamic> json) => _$AdaptiveRecordFromJson(json);
}

@freezed
abstract class AdaptiveLog with _$AdaptiveLog {
  const factory AdaptiveLog({
    required String sessionId,
    required Skill skill,
    required DateTime tStart,
    DateTime? tEnd,
    @Default(<AdaptiveRecord>[]) List<AdaptiveRecord> records,
    StopReason? stopReason,
    @Default(<String, int>{}) Map<String, int> itemExposureCount,
  }) = _AdaptiveLog;

  factory AdaptiveLog.fromJson(Map<String, dynamic> json) => _$AdaptiveLogFromJson(json);
}


