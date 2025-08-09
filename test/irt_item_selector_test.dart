import 'package:flutter_test/flutter_test.dart';
import 'package:tahseen/features/assessment/engine/irt/irt_item_selector.dart';
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
  test('selects item near theta by max information', () {
    final sel = const IrtItemSelector();
    final items = [mk('i1', 1, -1, Skill.reading), mk('i2', 1, 0, Skill.reading), mk('i3', 1, 1, Skill.reading)];
    final next = sel.selectNext(candidates: items, theta: 0.1, servedIds: {});
    expect(next?.id, 'i2');
  });
}


