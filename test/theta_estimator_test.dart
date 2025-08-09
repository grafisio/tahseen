import 'package:flutter_test/flutter_test.dart';
import 'package:tahseen/features/assessment/engine/irt/theta_estimator.dart';
import 'package:tahseen/features/assessment/item_bank/models.dart';
import 'package:tahseen/features/assessment/models/enums.dart';

AssessmentItem mk(String id, double a, double b, Skill s) => AssessmentItem(
      id: id,
      skill: s,
      stem: 'S',
      options: const ['A', 'B'],
      answerKey: 'A',
      metadata: ItemMetadata(cefr: CEFR.A1, irt: IrtParam(a: a, b: b), tags: const [], estimatedTimeSec: 60),
    );

void main() {
  test('theta moves towards b when consistent correct', () {
    final est = const ThetaEstimator();
    final items = [mk('i1', 1, 1, Skill.listening), mk('i2', 1, 1, Skill.listening), mk('i3', 1, 1, Skill.listening)];
    final obs = items.map((e) => (item: e, correct: true)).toList();
    final r = est.estimateEap(obs);
    expect(r.$1 > 0.5, true);
  });

  test('theta moves away from b when consistent wrong', () {
    final est = const ThetaEstimator();
    final items = [mk('i1', 1, 1, Skill.listening), mk('i2', 1, 1, Skill.listening), mk('i3', 1, 1, Skill.listening)];
    final obs = items.map((e) => (item: e, correct: false)).toList();
    final r = est.estimateEap(obs);
    expect(r.$1 < 0.0, true);
  });
}


