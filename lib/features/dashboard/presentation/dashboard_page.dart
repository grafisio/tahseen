import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../assessment/models/ability_estimate.dart';
import '../../assessment/models/enums.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estimates = <AbilityEstimate>[
      AbilityEstimate(skill: Skill.listening, theta: 0.1, se: 0.6, updatedAt: DateTime(2025)),
      AbilityEstimate(skill: Skill.speaking, theta: -0.2, se: 0.7, updatedAt: DateTime(2025)),
      AbilityEstimate(skill: Skill.reading, theta: 0.5, se: 0.5, updatedAt: DateTime(2025)),
      AbilityEstimate(skill: Skill.writing, theta: 0.0, se: 0.6, updatedAt: DateTime(2025)),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Ringkasan Kemampuan (θ ~ CEFR)'),
          const SizedBox(height: 8),
          ...estimates.map((e) => ListTile(
                title: Text(e.skill.name),
                subtitle: Text('θ=${e.theta.toStringAsFixed(2)}  SE=${e.se.toStringAsFixed(2)}'),
              )),
          const Divider(),
          const Text('Modul aktif/terkunci'),
          const ListTile(title: Text('Module 1 (aktif)')),
          const ListTile(title: Text('Module 2 (terkunci)')),
          const Divider(),
          const Text('Jadwal belajar'),
          const ListTile(title: Text('Besok 07:00 - Listening')),
        ],
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Dashboard')),
    );
  }
}


