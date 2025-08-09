import 'package:flutter/material.dart';
import '../../learning/models/learning.dart';
import '../../assessment/models/enums.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final modules = [
      const LearningModule(id: 'm1', skill: Skill.reading, cefr: CEFR.A1, title: 'Membaca Dasar'),
      const LearningModule(id: 'm2', skill: Skill.listening, cefr: CEFR.A2, title: 'Mendengar Dasar'),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar')),
      body: ListView(
        children: modules.map((m) => ListTile(title: Text(m.title))).toList(),
      ),
    );
  }
}


