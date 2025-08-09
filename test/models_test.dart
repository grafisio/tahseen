import 'package:flutter_test/flutter_test.dart';
import 'package:tahseen/features/assessment/models/enums.dart' as assess;
import 'package:tahseen/features/assessment/models/item.dart' as assess;
import 'package:tahseen/features/assessment/models/response.dart' as assess;
import 'package:tahseen/features/assessment/models/ability_estimate.dart' as assess;
import 'package:tahseen/features/learning/models/learning.dart' as learn;

void main() {
  test('Item serialize/deserialize', () {
    final item = assess.Item(
      id: 'it1',
      skill: assess.Skill.listening,
      stem: '...?',
      options: ['A', 'B'],
      answerKey: 'A',
      metadata: assess.ItemMetadata(
        cefr: assess.CEFR.A1,
        aParam: 1.2,
        bParam: 0.0,
        cParam: 0.2,
        tags: ['tag1'],
      ),
    );
    final json = item.toJson();
    final back = assess.Item.fromJson(json);
    expect(back, item);
  });

  test('Response serialize/deserialize', () {
    final r = assess.Response(
      itemId: 'it1',
      chosen: 'A',
      correct: true,
      timeMs: 1200,
      timestamp: DateTime.utc(2025, 1, 1),
    );
    final json = r.toJson();
    final back = assess.Response.fromJson(json);
    expect(back, r);
  });

  test('AbilityEstimate serialize/deserialize', () {
    final a = assess.AbilityEstimate(
      skill: assess.Skill.reading,
      theta: 0.5,
      se: 0.3,
      updatedAt: DateTime.utc(2025, 1, 1),
    );
    final json = a.toJson();
    final back = assess.AbilityEstimate.fromJson(json);
    expect(back, a);
  });

  test('LearningPath serialize/deserialize', () {
    final m = learn.LearningModule(
      id: 'm1',
      skill: assess.Skill.writing,
      cefr: assess.CEFR.B1,
      title: 'Module 1',
      prerequisites: ['m0'],
      activities: ['a1', 'a2'],
    );
    final path = learn.LearningPath(
      id: 'p1',
      modules: [m],
      lockedModules: ['m2'],
    );
    final json = path.toJson();
    final back = learn.LearningPath.fromJson(json);
    expect(back, path);
  });
}


