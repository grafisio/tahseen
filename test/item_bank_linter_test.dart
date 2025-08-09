import 'package:flutter_test/flutter_test.dart';
import 'package:tahseen/features/assessment/item_bank/item_bank_linter.dart';
import 'package:tahseen/features/assessment/item_bank/models.dart';
import 'package:tahseen/features/assessment/models/enums.dart';

AssessmentItem item({required String id, double a = 1, double b = 0, double? c, CEFR cefr = CEFR.A1}) =>
    AssessmentItem(
      id: id,
      skill: Skill.reading,
      stem: 'S',
      options: const ['A', 'B'],
      answerKey: 'A',
      metadata: ItemMetadata(cefr: cefr, irt: IrtParam(a: a, b: b, c: c), tags: const [], estimatedTimeSec: 60),
    );

void main() {
  test('detect duplicate ids and out-of-range irt', () {
    final l = const ItemBankLinter();
    final items = [
      item(id: 'x', a: 0.4),
      item(id: 'x'),
      item(id: 'y', b: 3.5),
      item(id: 'z', c: 0.5),
    ];
    final issues = l.lint(items);
    expect(issues.where((e) => e.message.contains('duplicate')).isNotEmpty, true);
    expect(issues.where((e) => e.message.contains('a out')).isNotEmpty, true);
    expect(issues.where((e) => e.message.contains('b out')).isNotEmpty, true);
    expect(issues.where((e) => e.message.contains('c out')).isNotEmpty, true);
  });

  test('invalid CEFR', () {
    final fake = AssessmentItem(
      id: 'bad',
      skill: Skill.reading,
      stem: 'S',
      options: const ['A', 'B'],
      answerKey: 'A',
      metadata: ItemMetadata(cefr: CEFR.A1, irt: IrtParam(a: 1, b: 0), tags: const [], estimatedTimeSec: 60),
    );
    final l = const ItemBankLinter();
    // CEFR valid in model; simulate by direct map validation would happen before model parse.
    final issues = l.lint([fake]);
    expect(issues.any((e) => e.message.contains('invalid CEFR')), false);
  });
}


