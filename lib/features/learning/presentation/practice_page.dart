import 'package:flutter/material.dart';
import '../../assessment/models/enums.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({super.key, required this.skill});
  final String skill;
  @override
  Widget build(BuildContext context) {
    final s = Skill.values.firstWhere((e) => e.name == skill, orElse: () => Skill.reading);
    Widget content;
    switch (s) {
      case Skill.listening:
        content = const Text('Latihan Listening: pemutar audio (placeholder)');
        break;
      case Skill.speaking:
        content = Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Latihan Speaking: rekam/ASR (placeholder)'),
            TextField(decoration: InputDecoration(hintText: 'Ketik jika tanpa ASR')),
          ],
        );
        break;
      case Skill.reading:
        content = const Text('Latihan Reading: teks + pertanyaan (placeholder)');
        break;
      case Skill.writing:
        content = const Text('Latihan Writing: kotak jawaban (placeholder)');
        break;
    }
    return Scaffold(appBar: AppBar(title: const Text('Practice')), body: Center(child: content));
  }
}


