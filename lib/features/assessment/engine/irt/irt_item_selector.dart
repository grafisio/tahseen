import 'dart:math' as math;

import '../../item_bank/models.dart';

class IrtItemSelector {
  const IrtItemSelector();

  double _p2pl({required double theta, required double a, required double b}) {
    final t = -a * (theta - b);
    final p = 1.0 / (1.0 + math.exp(t));
    return p.clamp(1e-6, 1.0 - 1e-6);
  }

  double _p3pl({required double theta, required double a, required double b, required double c}) {
    final p2 = _p2pl(theta: theta, a: a, b: b);
    final p = c + (1 - c) * p2;
    return p.clamp(1e-6, 1.0 - 1e-6);
  }

  double _info2pl({required double theta, required double a, required double b}) {
    final p = _p2pl(theta: theta, a: a, b: b);
    return (a * a) * p * (1 - p);
  }

  double _info3pl({required double theta, required double a, required double b, required double c}) {
    final p = _p3pl(theta: theta, a: a, b: b, c: c);
    return (a * a) * ((p - c) * (p - c)) / (((1 - c) * (1 - c)) * p * (1 - p));
  }

  AssessmentItem? selectNext({
    required Iterable<AssessmentItem> candidates,
    required double theta,
    required Set<String> servedIds,
  }) {
    AssessmentItem? best;
    double bestInfo = -1;
    for (final item in candidates) {
      if (servedIds.contains(item.id)) continue;
      final a = item.metadata.irt.a;
      final b = item.metadata.irt.b;
      final c = item.metadata.irt.c;
      final info = c == null
          ? _info2pl(theta: theta, a: a, b: b)
          : _info3pl(theta: theta, a: a, b: b, c: c);
      if (info > bestInfo) {
        bestInfo = info;
        best = item;
      }
    }
    return best;
  }
}

