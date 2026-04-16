import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
// import 'package:core/vector_core.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  // app will provide
  // @external
  // EnvironmentConfig get config;
}
