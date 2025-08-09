import 'package:collection/collection.dart';

import '../models/enums.dart';
import '../item_bank/models.dart';
import '../engine/irt/irt_item_selector.dart';
import '../engine/irt/theta_estimator.dart';
import '../engine/logging/adaptive_logger.dart';

enum StopReason { none, seTarget, timeUp, maxItems }

class AssessmentSession {
  AssessmentSession({
    required this.skill,
    required Iterable<AssessmentItem> itemBank,
    this.minItems = 8,
    this.targetSe = 0.35,
    this.maxItems = 20,
    this.maxTimeSec = 480,
    DateTime Function()? now,
  })  : _all = itemBank.where((e) => e.skill == skill).toList(),
        _now = now ?? DateTime.now,
        timeStart = (now ?? DateTime.now)();

  final Skill skill;
  final DateTime timeStart;
  final int minItems;
  final double targetSe;
  final int maxItems;
  final int maxTimeSec;

  double theta = 0.0;
  double se = double.infinity;
  final Set<String> servedIds = {};
  final List<({AssessmentItem item, bool correct, int timeMs})> _obs = [];

  final List<AssessmentItem> _all;
  final IrtItemSelector _selector = const IrtItemSelector();
  final ThetaEstimator _estimator = const ThetaEstimator();
  int _earlyOk = 0;
  final DateTime Function() _now;
  StopReason _lastStop = StopReason.none;
  StopReason get lastStopReason => _lastStop;

  AssessmentItem? nextItem() {
    _logger ??= AdaptiveLogger()..startSession(skill);
    return _selector.selectNext(candidates: _all, theta: theta, servedIds: servedIds);
  }

  void recordResponse({required String itemId, required String chosen, required bool correct, required int timeMs}) {
    final item = _all.firstWhereOrNull((e) => e.id == itemId);
    if (item == null) return;
    servedIds.add(item.id);
    _obs.add((item: item, correct: correct, timeMs: timeMs));
    final before = theta;
    final est = _estimator.estimateEap(_obs.map((e) => (item: e.item, correct: e.correct)).toList());
    theta = est.$1;
    se = est.$2;
    _logger?.recordItemEvent(
      itemId: item.id,
      b: item.metadata.irt.b,
      correct: correct,
      timeMs: timeMs,
      chosen: chosen,
      thetaBefore: before,
      thetaAfter: theta,
      seAfter: se,
    );
    if (se < targetSe) {
      _earlyOk += 1;
    } else {
      _earlyOk = 0;
    }
  }

  bool shouldStop() {
    // time constraint
    final elapsed = _now().difference(timeStart).inSeconds;
    if (elapsed >= maxTimeSec) {
      _lastStop = StopReason.timeUp;
      return true;
    }
    // item count
    if (_obs.length >= maxItems) {
      _lastStop = StopReason.maxItems;
      return true;
    }
    // SE-based (only after min items)
    if (_obs.length >= minItems) {
      if (se <= targetSe || _earlyOk >= 3) {
        _lastStop = StopReason.seTarget;
        _logger?.endSession(_lastStop);
        return true;
      }
    }
    _lastStop = StopReason.none;
    return false;
  }

  AdaptiveLogger? _logger;
}


