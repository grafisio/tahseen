import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_planner.dart';
import '../../assessment/models/ability_snapshot.dart';
import '../../assessment/models/enums.dart';
import '../models/learning.dart';
import '../../profile/models/profile.dart';

class PlannerInsight {
  PlannerInsight({Map<Skill, double>? skillWeights, Map<String, double>? moduleWeights})
      : skillWeights = skillWeights ?? <Skill, double>{},
        moduleWeights = moduleWeights ?? <String, double>{};

  final Map<Skill, double> skillWeights; // higher = prioritize
  final Map<String, double> moduleWeights; // per-module bias

  PlannerInsight copyWith({Map<Skill, double>? skillWeights, Map<String, double>? moduleWeights}) =>
      PlannerInsight(
        skillWeights: skillWeights ?? Map<Skill, double>.from(this.skillWeights),
        moduleWeights: moduleWeights ?? Map<String, double>.from(this.moduleWeights),
      );
}

final plannerInsightProvider = StateNotifierProvider<PlannerInsightNotifier, PlannerInsight>((ref) {
  return PlannerInsightNotifier();
});

class PlannerInsightNotifier extends StateNotifier<PlannerInsight> {
  PlannerInsightNotifier() : super(PlannerInsight());

  void addSkillHint(Skill skill, double weightDelta) {
    final current = state.skillWeights[skill] ?? 0.0;
    state = state.copyWith(skillWeights: {...state.skillWeights, skill: current + weightDelta});
  }

  void addModuleDifficulty(String moduleId, double weightDelta) {
    final current = state.moduleWeights[moduleId] ?? 0.0;
    state = state.copyWith(moduleWeights: {...state.moduleWeights, moduleId: current + weightDelta});
  }
}

class LearningPathState {
  LearningPathState({required this.catalog, required this.path});
  final List<LearningModule> catalog;
  final LearningPath path;

  LearningPathState copyWith({List<LearningModule>? catalog, LearningPath? path}) =>
      LearningPathState(catalog: catalog ?? this.catalog, path: path ?? this.path);
}

final profileProvider = StateProvider<Profile>((ref) => const Profile(userId: 'u1', displayName: 'User'));
final abilitySnapshotProvider = StateProvider<AbilitySnapshot>((ref) => const AbilitySnapshot());

class LearningPathNotifier extends StateNotifier<LearningPathState> {
  LearningPathNotifier({required this.ref, required List<LearningModule> initialCatalog})
      : super(LearningPathState(
          catalog: initialCatalog,
          path: LearningPath(id: 'initial', modules: initialCatalog, lockedModules: const []),
        ));

  final Ref ref;

  void replan() {
    final planner = const AiPlanner();
    final abilities = ref.read(abilitySnapshotProvider);
    final insights = ref.read(plannerInsightProvider);
    final planned = planner.planOrReplanPath(
      abilities: abilities,
      catalog: state.catalog,
      insights: insights,
    );
    state = state.copyWith(path: planned);
  }
}

final learningPathProvider = StateNotifierProvider<LearningPathNotifier, LearningPathState>((ref) {
  // simple boot catalog; in real app, fetch from repository
  final catalog = <LearningModule>[
    const LearningModule(id: 'm1', skill: Skill.reading, cefr: CEFR.A1, title: 'Membaca Dasar'),
    const LearningModule(id: 'm2', skill: Skill.listening, cefr: CEFR.A2, title: 'Mendengar Dasar'),
    const LearningModule(id: 'm3', skill: Skill.writing, cefr: CEFR.A1, title: 'Menulis Dasar', prerequisites: ['m1']),
  ];
  return LearningPathNotifier(ref: ref, initialCatalog: catalog);
});

// Module progress + hook to replan when mastered
final moduleProgressProvider = StateNotifierProvider<ModuleProgressNotifier, Map<String, double>>((ref) {
  return ModuleProgressNotifier(ref: ref);
});

class ModuleProgressNotifier extends StateNotifier<Map<String, double>> {
  ModuleProgressNotifier({required this.ref}) : super(<String, double>{});
  final Ref ref;

  // score 0-100, criticalErrors is a count of critical mistakes
  void markEvaluated({required String moduleId, required double score, required int criticalErrors}) {
    state = {...state, moduleId: score};
    final mastered = score >= 80.0 && criticalErrors <= 1;
    if (mastered) {
      // optional: send insight to planner to slightly de-prioritize mastered module, and boost weak skills
      ref.read(plannerInsightProvider.notifier).addModuleDifficulty(moduleId, -10.0);
      // Hook: replan path
      ref.read(learningPathProvider.notifier).replan();
    }
  }
}


