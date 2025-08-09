class Env {
  const Env._();

  static String get apiBaseUrl => const String.fromEnvironment('API_BASE_URL', defaultValue: '');
  static String get aiApiKey => const String.fromEnvironment('AI_API_KEY', defaultValue: '');
  static String get aiModel => const String.fromEnvironment('AI_MODEL', defaultValue: '');
  static int get timeoutMs => int.tryParse(const String.fromEnvironment('TIMEOUT_MS', defaultValue: '30000')) ?? 30000;

  static bool get isConfigured => apiBaseUrl.isNotEmpty && aiApiKey.isNotEmpty;
}

class Utils {
  const Utils._();
}


