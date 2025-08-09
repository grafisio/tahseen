import 'dart:math' as math;

import '../models/item.dart';

class IrtModel {
  const IrtModel();

  // 2PL model (ignores guessing), probability of correct
  double p2pl({required double theta, required double a, required double b}) {
    final exponent = -a * (theta - b);
    final p = 1.0 / (1.0 + math.exp(exponent));
    return p.clamp(1e-6, 1.0 - 1e-6);
  }

  // Fisher information for 2PL: I = a^2 * P(1-P)
  double information2pl({required double theta, required double a, required double b}) {
    final p = p2pl(theta: theta, a: a, b: b);
    return (a * a) * p * (1 - p);
  }
}

class IrtItemSelector {
  IrtItemSelector({IrtModel? model}) : _model = model ?? const IrtModel();
  final IrtModel _model;

  Item? selectNext({
    required Iterable<Item> candidates,
    required double theta,
    required Set<String> servedIds,
  }) {
    Item? best;
    double bestInfo = -1.0;
    for (final item in candidates) {
      if (servedIds.contains(item.id)) continue;
      final m = item.metadata;
      final info = _model.information2pl(theta: theta, a: m.aParam, b: m.bParam);
      if (info > bestInfo) {
        bestInfo = info;
        best = item;
      }
    }
    return best;
  }
}

class ThetaEstimator {
  ThetaEstimator({IrtModel? model}) : _model = model ?? const IrtModel();
  final IrtModel _model;

  // Simple EAP estimation with standard normal prior N(0,1)
  (double theta, double se) estimateEap({
    required List<({Item item, bool correct})> observations,
  }) {
    if (observations.isEmpty) return (0.0, double.infinity);

    // Numerical integration on grid
    const double minTheta = -4.0;
    const double maxTheta = 4.0;
    const double step = 0.1;

    double posteriorSum = 0.0;
    double posteriorThetaSum = 0.0;
    double posteriorTheta2Sum = 0.0;

    for (double t = minTheta; t <= maxTheta + 1e-9; t += step) {
      double logLike = 0.0;
      for (final obs in observations) {
        final a = obs.item.metadata.aParam;
        final b = obs.item.metadata.bParam;
        final p = _model.p2pl(theta: t, a: a, b: b);
        final q = 1 - p;
        logLike += obs.correct ? math.log(p) : math.log(q);
      }
      final prior = _standardNormalPdf(t);
      final weight = math.exp(logLike) * prior;
      posteriorSum += weight;
      posteriorThetaSum += weight * t;
      posteriorTheta2Sum += weight * t * t;
    }

    final theta = posteriorThetaSum / posteriorSum;
    final variance = (posteriorTheta2Sum / posteriorSum) - theta * theta;
    final se = math.sqrt(math.max(variance, 1e-9));
    return (theta, se);
  }

  double _standardNormalPdf(double x) {
    const double sqrt2pi = 2.5066282746310002; // sqrt(2*pi)
    return math.exp(-0.5 * x * x) / sqrt2pi;
  }
}


