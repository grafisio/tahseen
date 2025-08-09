import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import '../routing/app_router.dart';
import '../theme/app_theme.dart';
import '../../features/profile/models/user_session.dart';
import '../../features/ai/ai_client.dart';
import '../utils/utils.dart';
import '../../features/assessment/services/item_bank_service.dart';
import '../../features/notifications/notification_service.dart';
import '../config/flavor.dart';

final loggerProvider = Provider<Logger>((ref) => Logger());

final userSessionProvider = StateProvider<UserSession?>((ref) => null);

final appThemeProvider = Provider<AppTheme>((ref) => const AppTheme());

final routerProvider = Provider<GoRouter>((ref) {
  return createRouter(ref);
});

final itemBankServiceProvider = Provider<ItemBankService>((ref) => const LocalAssetItemBankService());

final notificationServiceProvider = Provider<NotificationService>((ref) => NoopNotificationService(ref.read(loggerProvider)));

final aiClientProvider = Provider<AiClient>((ref) {
  final flavor = AppFlavor.current;
  if (flavor == Flavor.dev) {
    return AiClientLocalMock();
  }
  // staging/prod -> HTTP client, requires env
  return AiClientHttp(baseUrl: Env.apiBaseUrl, apiKey: Env.aiApiKey);
});


