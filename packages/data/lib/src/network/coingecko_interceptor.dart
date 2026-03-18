import 'package:dio/dio.dart';

class CoinGeckoInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['x-cg-demo-api-key'] = 'api key from env';
    super.onRequest(options, handler);
  }
}
