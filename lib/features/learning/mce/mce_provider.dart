import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/learning.dart';
import 'mce_models.dart';

class MceState {
  const MceState({this.inProgress, this.result, this.remedial});
  final MasteryCheckConfig? inProgress;
  final MasteryCheckResult? result;
  final RemedialPackage? remedial;

  MceState copyWith({MasteryCheckConfig? inProgress, MasteryCheckResult? result, RemedialPackage? remedial}) =>
      MceState(inProgress: inProgress ?? this.inProgress, result: result ?? this.result, remedial: remedial ?? this.remedial);
}

class MceController extends StateNotifier<MceState> {
  MceController() : super(const MceState());

  void startForModule(LearningModule module) {
    state = MceState(inProgress: MasteryCheckConfig(moduleId: module.id, skill: module.skill));
  }

  void submitResult({required String moduleId, required int total, required int correct, required int criticalErrors}) {
    final score = (correct / total) * 100.0;
    final passed = score >= 80.0 && criticalErrors <= 1;
    state = state.copyWith(result: MasteryCheckResult(moduleId: moduleId, total: total, correct: correct, score: score, passed: passed));
    if (!passed) {
      state = state.copyWith(
        remedial: RemedialPackage(moduleId: moduleId, exercises: const ['Latihan tambahan 1', 'Latihan tambahan 2'], summary: 'Perkuat konsep kunci.'),
      );
    }
  }

  void finishRemedialAndRetry() {
    final cfg = state.inProgress;
    if (cfg == null) return;
    state = MceState(inProgress: cfg); // reset result and remedial, retry MCE
  }
}

final mceProvider = StateNotifierProvider<MceController, MceState>((ref) => MceController());


