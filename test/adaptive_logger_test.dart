import 'package:flutter_test/flutter_test.dart';
import 'package:tahseen/features/assessment/engine/logging/adaptive_logger.dart';
import 'package:tahseen/features/assessment/models/enums.dart';
import 'package:tahseen/features/assessment/session/assessment_session.dart';

void main() {
  test('adaptive logger records events and stop', () {
    final logger = AdaptiveLogger();
    final log = logger.startSession(Skill.reading);
    expect(log.sessionId.isNotEmpty, true);
    logger.recordItemEvent(
      itemId: 'x',
      b: 0.0,
      correct: true,
      timeMs: 1200,
      thetaBefore: 0.0,
      thetaAfter: 0.1,
      seAfter: 0.9,
    );
    expect(logger.current!.records.length, 1);
    final ended = logger.endSession(StopReason.seTarget)!;
    expect(ended.tEnd != null, true);
    expect(ended.stopReason, StopReason.seTarget);
    expect(ended.itemExposureCount['x'], 1);
  });
}


