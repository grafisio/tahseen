import 'package:flutter_test/flutter_test.dart';
import 'package:tahseen/features/assessment/models/ability_snapshot.dart';
import 'package:tahseen/features/assessment/models/ability_estimate.dart';
import 'package:tahseen/features/assessment/models/enums.dart';
import 'package:tahseen/features/learning/models/learning.dart';
import 'package:tahseen/features/learning/providers/learning_path_provider.dart';
import 'package:tahseen/features/ai/ai_planner.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FakePlanner extends AiPlanner {
  const FakePlanner();
  @override
  LearningPath planOrReplanPath({required AbilitySnapshot abilities, required List<LearningModule> catalog, PlannerInsight? insights}) {
    // reverse catalog to observe change
    return LearningPath(id: 'planned', modules: catalog.reversed.toList(), lockedModules: const []);
  }
}

void main() {
  test('mastery check triggers replan', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    // inject fake planner
    final notifier = container.read(learningPathProvider.notifier);
    notifier.setPlanner(const FakePlanner());
    final before = container.read(learningPathProvider).path.modules.map((e) => e.id).toList();
    // mastery
    container.read(moduleProgressProvider.notifier).markEvaluated(moduleId: 'm1', score: 90, criticalErrors: 0);
    final after = container.read(learningPathProvider).path.modules.map((e) => e.id).toList();
    expect(after, isNot(equals(before)));
  });

  test('AI insight triggers replan and changes order', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final notifier = container.read(learningPathProvider.notifier);
    notifier.setPlanner(const FakePlanner());
    final before = container.read(learningPathProvider).path.modules.map((e) => e.id).toList();
    // push insight
    container.read(plannerInsightProvider.notifier).addSkillHint(Skill.listening, 5);
    notifier.replan();
    final after = container.read(learningPathProvider).path.modules.map((e) => e.id).toList();
    expect(after, isNot(equals(before)));
  });
}


