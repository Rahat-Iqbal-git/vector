import 'package:core/vector_core.dart';
import 'package:fpdart/fpdart.dart';
import 'package:vector_data/src/response_models/data/global_data_response.dart';

abstract class GlobalDataDataSource {
  Future<Either<Failure, GlobalDataResponse>> getGlobalData();
}
