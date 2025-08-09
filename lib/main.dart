import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: unused_import
import 'package:go_router/go_router.dart';

import 'core/di/providers.dart';

void main() {
  runApp(const ProviderScope(child: ArabiApp()));
}

class ArabiApp extends ConsumerWidget {
  const ArabiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider).light();
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Arabi',
      theme: theme,
      routerConfig: router,
    );
  }
}
