import '../models/enums.dart';
import '../models/item.dart';

class AssessmentItemBank {
  AssessmentItemBank(this.items);
  final List<Item> items;

  List<Item> bySkill(Skill skill) => items.where((e) => e.skill == skill).toList();
}


