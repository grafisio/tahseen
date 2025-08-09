import '../../../core/config/assessment_defaults.dart';
import '../models/enums.dart';
import '../models/item.dart';
import '../models/ability_estimate.dart';
import 'irt.dart';
import '../../../core/storage/app_database.dart';

class AssessmentSession {
  AssessmentSession({
    required this.skill,
    required Iterable<Item> itemBank,
    AppDatabase? db,
    StoppingRules? rules,
    double initialTheta = 0.0,
  })  : _allItems = itemBank.where((e) => e.skill == skill).toList(growable: false),
        theta = initialTheta,
        se = double.infinity,
        _db = db,
        _rules = rules ?? AssessmentDefaults.forSkill(skill);

  final Skill skill;
  final List<Item> _allItems;
  final StoppingRules _rules;

  final Set<String> servedIds = <String>{};
  double theta;
  double se;
  int _earlyStopStreak = 0;
  final AppDatabase? _db;

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

    if (se < _rules.targetSe) {
      _earlyStopStreak += 1;
    } else {
      _earlyStopStreak = 0;
    }

    // Log events
    final db = _db;
    if (db != null) {
      db.insertEvent('response_recorded', '{"itemId":"${item.id}","correct":$correct}');
      db.insertEvent('theta_updated', '{"theta":$theta,"se":$se}');
      db.upsertExposure(itemId: item.id, skill: skill.name, when: DateTime.now());
    }
  }

  bool get canStop {
    if (_observations.length < _rules.minItems) return false;
    if (_observations.length >= _rules.maxItems) return true;
    if (_earlyStopStreak >= _rules.earlyStopWindow) return true;
    return se <= _rules.targetSe;
  }

  AbilityEstimate toAbilityEstimate() {
    return AbilityEstimate(skill: skill, theta: theta, se: se, updatedAt: DateTime.now());
  }
}


