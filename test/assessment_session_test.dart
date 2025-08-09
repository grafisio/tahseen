import 'package:flutter_test/flutter_test.dart';
import 'package:tahseen/features/assessment/session/assessment_session.dart';
import 'package:tahseen/features/assessment/item_bank/models.dart';
import 'package:tahseen/features/assessment/models/enums.dart';

AssessmentItem mk(String id, double b, Skill s) => AssessmentItem(
      id: id,
      skill: s,
      stem: 'S',
      options: const ['A', 'B'],
      answerKey: 'A',
      metadata: ItemMetadata(cefr: CEFR.A1, irt: IrtParam(a: 1, b: b), tags: const [], estimatedTimeSec: 60),
    );

void main() {
  test('session cycle next -> record -> stop by SE', () {
    final bank = [for (int i = -5; i <= 5; i++) mk('i$i', i / 2, Skill.reading)];
    final s = AssessmentSession(skill: Skill.reading, itemBank: bank, minItems: 3, targetSe: 0.9, maxItems: 10);
    for (int k = 0; k < 10; k++) {
      final it = s.nextItem();
      expect(it, isNotNull);
      s.recordResponse(itemId: it!.id, chosen: 'A', correct: true, timeMs: 5000);
      if (s.shouldStop()) break;
    }
    expect(s.servedIds.isNotEmpty, true);
    expect(s.shouldStop(), true);
    expect(s.lastStopReason, StopReason.seTarget);
  });

  test('stop by time up', () async {
    final bank = [for (int i = -5; i <= 5; i++) mk('ti$i', i / 2, Skill.reading)];
    DateTime fakeNow = DateTime(2025, 1, 1, 0, 0, 0);
    DateTime now() => fakeNow;
    final s = AssessmentSession(skill: Skill.reading, itemBank: bank, maxTimeSec: 10, now: now);
    // advance time beyond maxTimeSec
    fakeNow = fakeNow.add(const Duration(seconds: 11));
    expect(s.shouldStop(), true);
    expect(s.lastStopReason, StopReason.timeUp);
  });

  test('stop by max items', () {
    final bank = [for (int i = -5; i <= 5; i++) mk('mi$i', i / 2, Skill.reading)];
    final s = AssessmentSession(skill: Skill.reading, itemBank: bank, minItems: 1, targetSe: 0.000001, maxItems: 2);
    for (int k = 0; k < 5; k++) {
      final it = s.nextItem();
      if (it == null) break;
      s.recordResponse(itemId: it.id, chosen: 'A', correct: false, timeMs: 1000);
      if (s.shouldStop()) break;
    }
    expect(s.lastStopReason == StopReason.maxItems || s.lastStopReason == StopReason.seTarget, true);
  });
}


