import 'package:bloc/bloc.dart';
import 'package:core/vector_core.dart';
import 'package:injectable/injectable.dart';
import 'package:vector_domain/vector_domain.dart';

@injectable
class CryptoDataCubit extends Cubit<AsyncState<GlobalCryptoDataEntity>> {
  CryptoDataCubit(this._useCase) : super(const AsyncInitial());

  final GetGlobalCryptoDataUseCase _useCase;

  Future<void> fetchGlobalCryptoData() async {
    emit(const AsyncLoading());

    final result = await _useCase.call();
    result.fold(
      (failure) => emit(AsyncFailure(failure)),
      (data) => emit(AsyncSuccess(data)),
    );
  }
}
