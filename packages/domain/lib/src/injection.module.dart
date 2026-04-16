//@GeneratedMicroModule;VectorDomainPackageModule;package:vector_domain/src/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:vector_domain/src/repositories/gloal_crypto_data_repository.dart'
    as _i293;
import 'package:vector_domain/src/use_cases/get_global%20_crypto_data_use_case.dart'
    as _i283;

class VectorDomainPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i283.GetGlobalCryptoDataUseCase>(
      () => _i283.GetGlobalCryptoDataUseCase(
        gh<_i293.GlobalCryptoDataRepository>(),
      ),
    );
  }
}
