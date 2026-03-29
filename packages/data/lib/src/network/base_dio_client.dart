import 'dart:developer';

import 'package:core/vector_core.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:vector_data/src/network/dio_exception.dart';

abstract class BaseDioClient {
  final Dio _dio;
  final EnvironmentConfig _config;

  BaseDioClient(this._dio, this._config) {
    _dio
      ..options.baseUrl = _config.baseUrl
      ..options.connectTimeout = const Duration(seconds: 15)
      ..options.receiveTimeout = const Duration(seconds: 15)
      ..options.responseType = ResponseType.json
      // Add LogInterceptor only in debug mode
      ..interceptors.addAll([
        if (_config.enableLogging)
          LogInterceptor(requestHeader: true, requestBody: true, responseBody: true),
      ]);
  }

  Future<Either<Failure, T>> _performRequest<T>(
    Future<Response<T>> Function() request,
  ) async {
    try {
      final response = await request();
      // Ensure we have data; if null, you might want a specific failure
      return Right(response.data as T);
    } on DioException catch (e) {
      log(e.toString(), name: "DioException");
      return Left(
        ApiFailure(
          message: DioExceptions.fromDioError(e).message,
          statusCode: e.response?.statusCode,
        ),
      );
    } catch (e) {
      return Left(ApiFailure(message: "Unexpected error: $e"));
    }
  }

  Future<Either<Failure, T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return _performRequest<T>(
      () => _dio.get<T>(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      ),
    );
  }

  Future<Either<Failure, T>> post<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return _performRequest<T>(
      () => _dio.post<T>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      ),
    );
  }
}
