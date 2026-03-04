import 'package:core/vector_core.dart';

class EnvironmentFactory {
  static EnvironmentConfig create(Environment env) {
    switch (env) {
      case Environment.development:
        return _DevelopmentConfig();
      case Environment.staging:
        return _StagingConfig();
      case Environment.production:
        return _ProductionConfig();
    }
  }
}

class _DevelopmentConfig implements EnvironmentConfig {
  @override
  String get appName => const String.fromEnvironment(
    'APP_NAME',
    defaultValue: '[Dev Build] Vector',
  );

  @override
  bool get enableLogging => const bool.fromEnvironment(
    'ENABLE_LOGGING',
    defaultValue: true,
  );

  @override
  String get coingeckoApiKey => const String.fromEnvironment(
    'COINGECKO_API_KEY',
    defaultValue: 'demo-key-for-dev',
  );

  @override
  String get baseUrl => const String.fromEnvironment('BASE_URL');

  @override
  Environment get environment => Environment.development;
}

class _StagingConfig implements EnvironmentConfig {
  @override
  String get appName => const String.fromEnvironment(
    'APP_NAME',
    defaultValue: '[Staging] Vector',
  );

  @override
  bool get enableLogging => const bool.fromEnvironment(
    'ENABLE_LOGGING',
    defaultValue: true,
  );

  @override
  String get coingeckoApiKey => const String.fromEnvironment(
    'COINGECKO_API_KEY',
    defaultValue: 'staging-demo-key',
  );

  @override
  String get baseUrl => const String.fromEnvironment('BASE_URL');

  @override
  Environment get environment => Environment.staging;
}

class _ProductionConfig implements EnvironmentConfig {
  @override
  String get appName => const String.fromEnvironment(
    'APP_NAME',
    defaultValue: 'Vector',
  );

  @override
  bool get enableLogging => false;

  @override
  String get coingeckoApiKey => const String.fromEnvironment(
    'COINGECKO_API_KEY',
  );

  @override
  String get baseUrl => const String.fromEnvironment('BASE_URL');

  @override
  Environment get environment => Environment.production;
}
