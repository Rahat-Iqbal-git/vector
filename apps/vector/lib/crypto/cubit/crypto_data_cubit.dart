import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:vector_domain/vector_domain.dart';

@injectable
class CryptoDataCubit extends Cubit<GlobalCryptoDataEntity> {
  CryptoDataCubit(this._useCase)
    : super(
        const GlobalCryptoDataEntity(
          activeCryptocurrencies: 0,
          upcomingIcos: 0,
          ongoingIcos: 0,
          endedIcos: 0,
          markets: 0,
        ),
      );

  final GetGlobalCryptoDataUseCase _useCase;

  Future<void> fetchGlobalCryptoData() async {
    final data = await _useCase.call();
    data.fold(
      (failure) {
        log('Failed to fetch global crypto data: $failure');
      },
      emit,
    );
  }

  //
}
