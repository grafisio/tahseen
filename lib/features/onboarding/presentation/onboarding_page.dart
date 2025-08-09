import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});
  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  String language = 'id';
  String goal = '';
  final Set<String> preferences = {};
  bool consent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Onboarding')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text('Bahasa UI'),
            DropdownButton<String>(
              value: language,
              items: const [
                DropdownMenuItem(value: 'id', child: Text('Bahasa Indonesia')),
                DropdownMenuItem(value: 'ar', child: Text('العربية')),
              ],
              onChanged: (v) => setState(() => language = v ?? 'id'),
            ),
            const SizedBox(height: 16),
            const Text('Tujuan'),
            TextField(
              decoration: const InputDecoration(hintText: 'Contoh: Lulus ujian B1'),
              onChanged: (v) => goal = v,
            ),
            const SizedBox(height: 16),
            const Text('Preferensi'),
            Wrap(spacing: 8, children: [
              _chip('Audio'),
              _chip('Dialog'),
              _chip('Kosa kata'),
              _chip('Tata bahasa'),
            ]),
            const SizedBox(height: 16),
            CheckboxListTile(
              value: consent,
              onChanged: (v) => setState(() => consent = v ?? false),
              title: const Text('Saya setuju dengan ketentuan'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: consent ? () => Navigator.of(context).pop() : null,
              child: const Text('Mulai'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _chip(String label) {
    final selected = preferences.contains(label);
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: (v) => setState(() {
        if (v) {
          preferences.add(label);
        } else {
          preferences.remove(label);
        }
      }),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Onboarding')),
    );
  }
}


