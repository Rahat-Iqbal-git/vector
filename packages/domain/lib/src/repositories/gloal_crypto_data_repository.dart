import 'package:core/vector_core.dart';
import 'package:fpdart/fpdart.dart';
import 'package:vector_domain/src/entites/crypto_summary_entity.dart';

abstract class GlobalCryptoDataRepository {
  Future<Either<Failure, GlobalCryptoDataEntity>> getGlobalCryptoData();
}