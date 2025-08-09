import 'package:flutter/material.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({super.key, required this.skill});
  final String skill;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practice')),
      body: Center(child: Text('Practice: $skill')),
    );
  }
}


