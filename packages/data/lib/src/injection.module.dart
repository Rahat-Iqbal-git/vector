//@GeneratedMicroModule;VectorDataPackageModule;package:vector_data/src/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core/vector_core.dart' as _i1038;
import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;
import 'package:vector_data/src/data_source/global_data_data_source/global_data_data_source.dart'
    as _i253;
import 'package:vector_data/src/data_source/global_data_data_source/remote_global_data_data_source_impl.dart'
    as _i334;
import 'package:vector_data/src/network/coingecko_api_client.dart' as _i144;
import 'package:vector_data/src/register_module.dart' as _i974;
import 'package:vector_data/src/repositories/global_data_repository_impl.dart'
    as _i533;
import 'package:vector_domain/vector_domain.dart' as _i418;

class VectorDataPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i144.CoingeckoApiClient>(
      () => _i144.CoingeckoApiClient(
        gh<_i361.Dio>(),
        gh<_i1038.EnvironmentConfig>(),
      ),
    );
    gh.lazySingleton<_i253.GlobalDataDataSource>(
      () =>
          _i334.RemoteGlobalDataDataSourceImpl(gh<_i144.CoingeckoApiClient>()),
    );
    gh.lazySingleton<_i418.GlobalCryptoDataRepository>(
      () => _i533.GlobalDataRepositoryImpl(
        dataSource: gh<_i253.GlobalDataDataSource>(),
      ),
    );
  }
}

class _$RegisterModule extends _i974.RegisterModule {}
