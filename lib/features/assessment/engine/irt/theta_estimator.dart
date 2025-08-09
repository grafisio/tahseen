import 'dart:math' as math;

import '../../item_bank/models.dart';

class ThetaEstimator {
  const ThetaEstimator();

  // EAP with standard normal prior; grid integration
  (double theta, double se) estimateEap(List<({AssessmentItem item, bool correct})> obs) {
    if (obs.isEmpty) return (0.0, double.infinity);
    const double minT = -4.0;
    const double maxT = 4.0;
    const double step = 0.1;

    double sumW = 0, sumWT = 0, sumWT2 = 0;
    for (double t = minT; t <= maxT + 1e-9; t += step) {
      double logLike = 0;
      for (final o in obs) {
        final a = o.item.metadata.irt.a;
        final b = o.item.metadata.irt.b;
        final c = o.item.metadata.irt.c ?? 0.0;
        final p = _p3pl(theta: t, a: a, b: b, c: c);
        logLike += o.correct ? math.log(p) : math.log(1 - p);
      }
      final prior = _stdNormPdf(t);
      final w = math.exp(logLike) * prior;
      sumW += w;
      sumWT += w * t;
      sumWT2 += w * t * t;
    }
    final theta = sumWT / sumW;
    final varT = (sumWT2 / sumW) - theta * theta;
    final se = math.sqrt(math.max(varT, 1e-9));
    return (theta, se);
  }

  // Simple MLE via one-step NR from current theta guess
  (double theta, double se) estimateMle(List<({AssessmentItem item, bool correct})> obs, {double start = 0}) {
    if (obs.isEmpty) return (0.0, double.infinity);
    double t = start;
    for (int iter = 0; iter < 10; iter++) {
      double l1 = 0, l2 = 0;
      for (final o in obs) {
        final a = o.item.metadata.irt.a;
        final b = o.item.metadata.irt.b;
        final c = o.item.metadata.irt.c ?? 0.0;
        final p = _p3pl(theta: t, a: a, b: b, c: c);
        final q = 1 - p;
        final dPdt = (a * (p - c) * (1 - p)) / (1 - c);
        l1 += (o.correct ? 1 : 0) * (dPdt / p) - (o.correct ? 0 : 1) * (dPdt / q);
        l2 -= (dPdt * dPdt) * (1 / p + 1 / q);
      }
      final step = l1 / l2;
      if (!step.isFinite) break;
      t -= step;
      if (step.abs() < 1e-4) break;
    }
    final info = _testInfo(theta: t, obs: obs);
    final se = info > 1e-9 ? 1 / math.sqrt(info) : double.infinity;
    return (t, se);
  }

  double _testInfo({required double theta, required List<({AssessmentItem item, bool correct})> obs}) {
    double I = 0;
    for (final o in obs) {
      final a = o.item.metadata.irt.a;
      final b = o.item.metadata.irt.b;
      final c = o.item.metadata.irt.c ?? 0.0;
      final p = _p3pl(theta: theta, a: a, b: b, c: c);
      I += (a * a) * ((p - c) * (p - c)) / (((1 - c) * (1 - c)) * p * (1 - p));
    }
    return I;
  }

  double _p3pl({required double theta, required double a, required double b, required double c}) {
    final z = -a * (theta - b);
    final p2 = 1.0 / (1.0 + math.exp(z));
    final p = c + (1 - c) * p2;
    return p.clamp(1e-6, 1.0 - 1e-6);
  }
  double _stdNormPdf(double x) => math.exp(-0.5 * x * x) / math.sqrt(2 * math.pi);
}


