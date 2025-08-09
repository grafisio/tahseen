import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import '../routing/app_router.dart';
import '../theme/app_theme.dart';
import '../../features/profile/models/user_session.dart';
import '../../features/ai/ai_client.dart';
import '../utils/utils.dart';

final loggerProvider = Provider<Logger>((ref) => Logger());

final userSessionProvider = StateProvider<UserSession?>((ref) => null);

final appThemeProvider = Provider<AppTheme>((ref) => const AppTheme());

final routerProvider = Provider<GoRouter>((ref) {
  return createRouter(ref);
});

final aiClientProvider = Provider<AiClient>((ref) {
  if (!Env.isConfigured) {
    return AiClientLocalMock();
  }
  return AiClientHttp(baseUrl: Env.apiBaseUrl, apiKey: Env.aiApiKey);
});


