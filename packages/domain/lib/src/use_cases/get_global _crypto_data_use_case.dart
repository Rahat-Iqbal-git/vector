import 'package:core/vector_core.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:vector_domain/src/entites/crypto_summary_entity.dart';
import 'package:vector_domain/src/repositories/gloal_crypto_data_repository.dart';

@injectable
class GetGlobalCryptoDataUseCase {
  final GlobalCryptoDataRepository _repository;

  GetGlobalCryptoDataUseCase(this._repository);

  Future<Either<Failure, GlobalCryptoDataEntity>> call() {
    return _repository.getGlobalCryptoData();
  }
}
