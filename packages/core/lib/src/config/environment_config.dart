import 'package:core/src/config/environment.dart';

abstract class EnvironmentConfig {
  Environment get environment;
  String get appName;
  bool get enableLogging;
  String get coingeckoApiKey;
  String get baseUrl;
}
