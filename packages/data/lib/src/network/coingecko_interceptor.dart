import 'package:dio/dio.dart';

class CoinGeckoInterceptor extends Interceptor {
  CoinGeckoInterceptor({required this.apiKey});
  final String apiKey;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['x-cg-demo-api-key'] = apiKey;
    super.onRequest(options, handler);
  }
}
