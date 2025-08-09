import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../engine/irt.dart';
import '../models/enums.dart';
import '../models/item.dart';

class AssessmentSessionState {
  AssessmentSessionState({
    required this.skill,
    required this.theta,
    required this.se,
    required this.servedIds,
    required this.currentItem,
    required this.finished,
  });

  final Skill skill;
  final double theta;
  final double se;
  final Set<String> servedIds;
  final Item? currentItem;
  final bool finished;

  AssessmentSessionState copyWith({
    double? theta,
    double? se,
    Set<String>? servedIds,
    Item? currentItem,
    bool? finished,
  }) {
    return AssessmentSessionState(
      skill: skill,
      theta: theta ?? this.theta,
      se: se ?? this.se,
      servedIds: servedIds ?? this.servedIds,
      currentItem: currentItem ?? this.currentItem,
      finished: finished ?? this.finished,
    );
  }
}

final sampleItemBankProvider = Provider<List<Item>>((ref) {
  List<Item> itemsFor(Skill s) => [
        for (int i = -3; i <= 3; i++)
          Item(
            id: '${s.name}_$i',
            skill: s,
            stem: 'سؤال $i (${s.name})',
            options: const ['أ', 'ب', 'ج', 'د'],
            answerKey: 'أ',
            metadata: ItemMetadata(cefr: CEFR.A1, aParam: 1.0, bParam: i.toDouble(), cParam: 0.0),
          ),
      ];
  return [
    ...itemsFor(Skill.listening),
    ...itemsFor(Skill.speaking),
    ...itemsFor(Skill.reading),
    ...itemsFor(Skill.writing),
  ];
});

class AssessmentSessionController extends StateNotifier<AssessmentSessionState> {
  AssessmentSessionController({required this.skill, required List<Item> allItems})
      : _allItems = allItems.where((e) => e.skill == skill).toList(),
        super(AssessmentSessionState(
          skill: skill,
          theta: 0.0,
          se: double.infinity,
          servedIds: <String>{},
          currentItem: null,
          finished: false,
        )) {
    _next();
  }

  final Skill skill;
  final List<Item> _allItems;
  final IrtItemSelector _selector = IrtItemSelector();
  final ThetaEstimator _estimator = ThetaEstimator();
  final List<({Item item, bool correct})> _obs = [];
  final int minItems = 5;
  final double targetSe = 0.7;

  void answer(String option) {
    final item = state.currentItem;
    if (item == null) return;
    final correct = (item.answerKey != null && option == item.answerKey);
    state.servedIds.add(item.id);
    _obs.add((item: item, correct: correct));
    final est = _estimator.estimateEap(observations: _obs);
    state = state.copyWith(theta: est.$1, se: est.$2);

    if (_obs.length >= minItems && state.se <= targetSe) {
      state = state.copyWith(finished: true, currentItem: null);
    } else {
      _next();
    }
  }

  void _next() {
    final next = _selector.selectNext(candidates: _allItems, theta: state.theta, servedIds: state.servedIds);
    state = state.copyWith(currentItem: next);
  }
}

final assessmentSessionProvider = StateNotifierProvider.family<AssessmentSessionController, AssessmentSessionState, Skill>((ref, skill) {
  final bank = ref.watch(sampleItemBankProvider);
  return AssessmentSessionController(skill: skill, allItems: bank);
});


