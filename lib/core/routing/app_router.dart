import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/onboarding/presentation/onboarding_page.dart';
import '../../features/dashboard/presentation/dashboard_page.dart';
import '../../features/assessment/presentation/pretest_page.dart';
import '../../features/assessment/presentation/posttest_page.dart';
import '../../features/learning/presentation/learn_page.dart';
import '../../features/learning/presentation/practice_page.dart';
import '../../features/certificate/presentation/certificate_page.dart';

GoRouter createRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const _Placeholder(title: 'Home')), // can redirect later
      GoRoute(path: '/onboarding', builder: (context, state) => const OnboardingPage()),
      GoRoute(path: '/dashboard', builder: (context, state) => const DashboardPage()),
      GoRoute(path: '/pretest', builder: (context, state) => const PretestPage()),
      GoRoute(path: '/learn', builder: (context, state) => const LearnPage()),
      GoRoute(path: '/practice/:skill', builder: (context, state) {
        final skill = state.pathParameters['skill'] ?? '';
        return PracticePage(skill: skill);
      }),
      GoRoute(path: '/posttest', builder: (context, state) => const PosttestPage()),
      GoRoute(path: '/certificate', builder: (context, state) => const CertificatePage()),
    ],
  );
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(title)), body: Center(child: Text(title)));
}


