import 'package:core/src/failure/failure.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:vector_data/src/data_source/global_data_data_source/global_data_data_source.dart';
import 'package:vector_domain/vector_domain.dart';

@LazySingleton(as: GlobalCryptoDataRepository)
class GlobalDataRepositoryImpl implements GlobalCryptoDataRepository {
  final GlobalDataDataSource _dataSource;

  GlobalDataRepositoryImpl({required GlobalDataDataSource dataSource})
    : _dataSource = dataSource;

  @override
  Future<Either<Failure, GlobalCryptoDataEntity>> getGlobalCryptoData() async {
    final response = await _dataSource.getGlobalData();

    return response.map((dataResponse) {
      final globalDataResponse = dataResponse.data;
      return GlobalCryptoDataEntity(
        activeCryptocurrencies: globalDataResponse?.activeCryptocurrencies ?? 0,
        upcomingIcos: globalDataResponse?.upcomingIcos ?? 0,
        ongoingIcos: globalDataResponse?.ongoingIcos ?? 0,
        endedIcos: globalDataResponse?.endedIcos ?? 0,
        markets: globalDataResponse?.markets ?? 0,
        total_market_cap: globalDataResponse?.totalMarketCap ?? {},
      );
    });
  }
}
