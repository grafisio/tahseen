import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../assessment/providers/session_providers.dart';
import '../../assessment/models/enums.dart';

class PreTestScreen extends ConsumerWidget {
  const PreTestScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pre-test'),
          bottom: const TabBar(tabs: [
            Tab(text: 'Listening'),
            Tab(text: 'Speaking'),
            Tab(text: 'Reading'),
            Tab(text: 'Writing'),
          ]),
        ),
        body: TabBarView(children: [
          _SkillTest(skill: Skill.listening),
          _SkillTest(skill: Skill.speaking),
          _SkillTest(skill: Skill.reading),
          _SkillTest(skill: Skill.writing),
        ]),
      ),
    );
  }
}

class _SkillTest extends ConsumerWidget {
  const _SkillTest({required this.skill});
  final Skill skill;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(assessmentSessionProvider(skill));
    if (state.finished) {
      return Center(child: Text('Selesai. θ=${state.theta.toStringAsFixed(2)} SE=${state.se.toStringAsFixed(2)}'));
    }
    final item = state.currentItem;
    if (item == null) return const Center(child: CircularProgressIndicator());
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(item.stem, textAlign: TextAlign.center),
          const SizedBox(height: 12),
          ...?item.options?.map((o) => ElevatedButton(
                onPressed: () => ref.read(assessmentSessionProvider(skill).notifier).answer(o),
                child: Text(o),
              )),
        ],
      ),
    );
  }
}


