import 'package:core/src/failure/failure.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:vector_data/src/data_source/global_data_data_source/global_data_data_source.dart';
import 'package:vector_data/src/network/coingecko_api_client.dart';
import 'package:vector_data/src/response_models/data/global_data_response.dart';

@LazySingleton(as:  GlobalDataDataSource)
class RemoteGlobalDataDataSourceImpl implements GlobalDataDataSource {
  final CoingeckoApiClient _apiClient;

  RemoteGlobalDataDataSourceImpl(this._apiClient);

  @override
  Future<Either<Failure, GlobalDataResponse>> getGlobalData() async {
    final response = await _apiClient.get<Map<String, dynamic>>('/global');

    return response.map((json) {
      return GlobalDataResponse.fromJson(json);
    });
  }

}
