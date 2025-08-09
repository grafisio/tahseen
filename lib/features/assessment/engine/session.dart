import '../models/enums.dart';
import '../models/item.dart';
import '../models/ability_estimate.dart';
import 'irt.dart';

class AssessmentSession {
  AssessmentSession({
    required this.skill,
    required Iterable<Item> itemBank,
    this.minItems = 10,
    this.targetSe = 0.3,
    double initialTheta = 0.0,
  })  : _allItems = itemBank.where((e) => e.skill == skill).toList(growable: false),
        theta = initialTheta,
        se = double.infinity;

  final Skill skill;
  final List<Item> _allItems;
  final int minItems;
  final double targetSe;

  final Set<String> servedIds = <String>{};
  double theta;
  double se;

  final IrtItemSelector _selector = IrtItemSelector();
  final ThetaEstimator _estimator = ThetaEstimator();
  final List<({Item item, bool correct})> _observations = [];

  Item? nextItem() {
    return _selector.selectNext(candidates: _allItems, theta: theta, servedIds: servedIds);
  }

  void recordResponse({required Item item, required bool correct}) {
    servedIds.add(item.id);
    _observations.add((item: item, correct: correct));
    final est = _estimator.estimateEap(observations: _observations);
    theta = est.$1;
    se = est.$2;
  }

  bool get canStop {
    if (_observations.length < minItems) return false;
    return se <= targetSe;
  }

  AbilityEstimate toAbilityEstimate() {
    return AbilityEstimate(skill: skill, theta: theta, se: se, updatedAt: DateTime.now());
  }
}


