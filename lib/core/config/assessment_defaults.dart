import '../../features/assessment/models/enums.dart';

class StoppingRules {
  const StoppingRules({
    required this.minItems,
    required this.targetSe,
    required this.maxItems,
    required this.maxTimeSec,
    required this.earlyStopWindow,
  });

  final int minItems;
  final double targetSe;
  final int maxItems;
  final int maxTimeSec;
  final int earlyStopWindow; // consecutive items with se < target
}

class AssessmentDefaults {
  const AssessmentDefaults._();

  static const StoppingRules global = StoppingRules(
    minItems: 10,
    targetSe: 0.35,
    maxItems: 20,
    maxTimeSec: 480,
    earlyStopWindow: 3,
  );

  static StoppingRules forSkill(Skill s) => global;

  // Prior theta params
  static ({double mean, double sigma}) priorTheta({double? lastTheta, int? sessions}) {
    if (lastTheta == null) return (mean: 0.0, sigma: 1.0);
    final sigma = (sessions != null && sessions > 1) ? 0.7 : 1.0;
    return (mean: lastTheta, sigma: sigma);
  }

  // Exposure window days
  static const int exposureTtlDays = 14;

  // Tag balancing: target max 40% per tag within a session
  static const double tagMaxShare = 0.40;
}


