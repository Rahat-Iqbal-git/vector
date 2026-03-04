import 'package:equatable/equatable.dart';

class CryptoSummaryEntity extends Equatable {
  final int activeCryptocurrencies;
  final int upcomingIcos;
  final int ongoingIcos;
  final int endedIcos;
  final int markets;

  const CryptoSummaryEntity({
    required this.activeCryptocurrencies,
    required this.upcomingIcos,
    required this.ongoingIcos,
    required this.endedIcos,
    required this.markets,
  });

  @override
  List<Object?> get props => [
    activeCryptocurrencies,
    upcomingIcos,
    ongoingIcos,
    endedIcos,
    markets,
  ];
}
