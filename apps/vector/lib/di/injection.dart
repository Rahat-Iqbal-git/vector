import 'package:core/vector_core.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:vector/di/injection.config.dart';
import 'package:vector_data/vector_data.dart';
import 'package:vector_domain/vector_domain.dart';

final GetIt getIt = GetIt.instance;

// @InjectableInit(
//   preferRelativeImports: true,
//   externalPackageModulesBefore: [
//     ExternalModule(VectorDataPackageModule),
//     ExternalModule(CounterDomainPackageModule),
//   ],
// )

@InjectableInit(
  initializerName: 'init',
  asExtension: true,
  // includeMicroPackages: true,
  externalPackageModulesBefore: [
    ExternalModule(VectorDomainPackageModule),
    ExternalModule(VectorDataPackageModule),
  ],
)
Future<void> configureDependencies(EnvironmentConfig envConfig) async {
  getIt.registerSingleton<EnvironmentConfig>(envConfig);
  getIt.init();
}
