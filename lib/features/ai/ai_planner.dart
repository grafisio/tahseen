import '../assessment/models/enums.dart';
import '../assessment/models/ability_estimate.dart';
import '../assessment/models/ability_snapshot.dart';
import '../learning/models/learning.dart';
import '../learning/providers/learning_path_provider.dart';

class AiPlanner {
  const AiPlanner();

  LearningPath planOrReplanPath({
    required AbilitySnapshot abilities,
    required List<LearningModule> catalog,
    PlannerInsight? insights,
  }) {
    // Find weakest skill (lowest theta)
    AbilityEstimate? weakest;
    for (final e in abilities.estimates) {
      if (weakest == null || e.theta < weakest!.theta) weakest = e;
    }
    final Skill? weakSkill = weakest?.skill;

    final modules = [...catalog];
    modules.sort((a, b) {
      int score(LearningModule m) {
        int s = 0;
        if (m.skill == weakSkill) s -= 100; // prioritize weak skill
        s += m.prerequisites.length; // prerequisites later
        if (insights != null) {
          s -= (insights.skillWeights[m.skill] ?? 0).round();
          s -= (insights.moduleWeights[m.id] ?? 0).round();
        }
        return s;
      }
      return score(a).compareTo(score(b));
    });

    // lock modules with unmet prerequisites
    final completed = <String>{};
    final locked = <String>[];
    for (final m in modules) {
      final unmet = m.prerequisites.where((p) => !completed.contains(p)).toList();
      if (unmet.isNotEmpty) locked.add(m.id);
    }

    return LearningPath(id: 'planned', modules: modules, lockedModules: locked);
  }
}


