import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/learning.dart';
import 'mce_provider.dart';

class MasteryCheckScreen extends ConsumerWidget {
  const MasteryCheckScreen({super.key, required this.module});
  final LearningModule module;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mce = ref.watch(mceProvider);
    final controller = ref.read(mceProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('Mastery Check')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (mce.inProgress == null) ...[
              Text('Modul: ${module.title}'),
              ElevatedButton(onPressed: () => controller.startForModule(module), child: const Text('Mulai MCE')),
            ] else if (mce.result == null && mce.remedial == null) ...[
              const Text('Kuis singkat (3 pertanyaan). Placeholder UI.'),
              ElevatedButton(
                onPressed: () => controller.submitResult(moduleId: module.id, total: 3, correct: 2, criticalErrors: 1),
                child: const Text('Submit (contoh gagal)'),
              ),
              ElevatedButton(
                onPressed: () => controller.submitResult(moduleId: module.id, total: 3, correct: 3, criticalErrors: 0),
                child: const Text('Submit (contoh lulus)'),
              ),
            ] else if (mce.remedial != null) ...[
              const Text('Remedial'),
              Text(mce.remedial!.summary),
              ...mce.remedial!.exercises.map((e) => ListTile(title: Text(e))),
              ElevatedButton(onPressed: () => controller.finishRemedialAndRetry(), child: const Text('Selesai Remedial & Ulangi MCE')),
            ] else if (mce.result != null) ...[
              Text('Skor: ${mce.result!.score.toStringAsFixed(0)}% — ${mce.result!.passed ? 'LULUS' : 'GAGAL'}'),
            ],
          ],
        ),
      ),
    );
  }
}


