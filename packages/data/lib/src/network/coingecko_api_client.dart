
import 'package:core/vector_core.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vector_data/src/network/base_dio_client.dart';
import 'package:vector_data/src/network/coingecko_interceptor.dart';

@lazySingleton
class CoingeckoApiClient extends BaseDioClient {
  CoingeckoApiClient(Dio dio, EnvironmentConfig config) : super(dio, config) {
    dio.options.baseUrl = config.baseUrl;
    // Specific interceptor only for this API
    dio.interceptors.add(CoinGeckoInterceptor()); 
  }
}