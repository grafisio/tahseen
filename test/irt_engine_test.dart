import 'package:flutter_test/flutter_test.dart';
import 'package:tahseen/features/assessment/engine/irt.dart';
import 'package:tahseen/features/assessment/engine/session.dart';
import 'package:tahseen/features/assessment/models/enums.dart';
import 'package:tahseen/features/assessment/models/item.dart';

Item makeItem(String id, double a, double b, Skill skill) => Item(
      id: id,
      skill: skill,
      stem: 'S',
      metadata: ItemMetadata(cefr: CEFR.A1, aParam: a, bParam: b, cParam: 0.0),
    );

void main() {
  test('IrtItemSelector selects item with max information near theta', () {
    final selector = IrtItemSelector();
    final items = [
      makeItem('i1', 1.0, -1.0, Skill.reading),
      makeItem('i2', 1.0, 0.0, Skill.reading),
      makeItem('i3', 1.0, 1.0, Skill.reading),
    ];
    final served = <String>{};
    final next = selector.selectNext(candidates: items, theta: 0.1, servedIds: served);
    expect(next?.id, 'i2');
  });

  test('AssessmentSession updates theta and stops by SE', () {
    final items = [
      for (var i = 0; i < 50; i++) makeItem('i$i', 1.0, (i - 25) / 10.0, Skill.listening)
    ];
    final session = AssessmentSession(skill: Skill.listening, itemBank: items);
    // simulate alternating correctness improving around theta
    for (int k = 0; k < 20; k++) {
      final item = session.nextItem();
      expect(item, isNotNull);
      final correct = (k % 2 == 0);
      session.recordResponse(item: item!, correct: correct);
      if (session.canStop) break;
    }
    expect(session.servedIds.length >= 5, true);
    expect(session.se <= 0.6, true);
  });
}


