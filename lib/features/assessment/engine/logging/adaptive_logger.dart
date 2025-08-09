import 'dart:convert';
import 'dart:io';

import 'package:uuid/uuid.dart';

import '../../models/enums.dart';
import '../../session/assessment_session.dart';
import 'adaptive_log.dart';

class AdaptiveLogger {
  AdaptiveLogger();

  AdaptiveLog? _log;

  AdaptiveLog startSession(Skill skill) {
    final id = const Uuid().v4();
    _log = AdaptiveLog(sessionId: id, skill: skill, tStart: DateTime.now());
    return _log!;
  }

  void recordItemEvent({
    required String itemId,
    required double b,
    required bool correct,
    required int timeMs,
    String? chosen,
    required double thetaBefore,
    required double thetaAfter,
    required double seAfter,
  }) {
    final log = _log;
    if (log == null) return;
    final updated = log.copyWith(
      records: [
        ...log.records,
        AdaptiveRecord(
          itemId: itemId,
          b: b,
          responseCorrect: correct,
          timeMs: timeMs,
          chosen: chosen,
          thetaBefore: thetaBefore,
          thetaAfter: thetaAfter,
          seAfter: seAfter,
        ),
      ],
      itemExposureCount: {
        ...log.itemExposureCount,
        itemId: (log.itemExposureCount[itemId] ?? 0) + 1,
      },
    );
    _log = updated;
  }

  AdaptiveLog? endSession(StopReason reason) {
    final log = _log;
    if (log == null) return null;
    final ended = log.copyWith(tEnd: DateTime.now(), stopReason: reason);
    _log = ended;
    return ended;
  }

  AdaptiveLog? get current => _log;

  Future<void> exportToJson(String filePath, {String? userId}) async {
    final log = _log;
    if (log == null) return;
    final entries = log.records.map((r) => {
          if (userId != null) 'userId': userId,
          'sessionId': log.sessionId,
          'skill': log.skill.name,
          'itemId': r.itemId,
          'chosen': r.chosen,
          'correct': r.responseCorrect,
          'timeMs': r.timeMs,
          'thetaBefore': r.thetaBefore,
          'thetaAfter': r.thetaAfter,
        });
    final jsonStr = JsonEncoder.withIndent('  ').convert(entries.toList());
    final file = File(filePath);
    await file.writeAsString(jsonStr);
  }
}


