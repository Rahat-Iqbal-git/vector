import 'package:equatable/equatable.dart';

class GlobalCryptoDataEntity extends Equatable {
  final int activeCryptocurrencies;
  final int upcomingIcos;
  final int ongoingIcos;
  final int endedIcos;
  final int markets;
  final Map<String, double>? total_market_cap;

  const GlobalCryptoDataEntity({
    required this.activeCryptocurrencies,
    required this.upcomingIcos,
    required this.ongoingIcos,
    required this.endedIcos,
    required this.markets,
    this.total_market_cap,
  });

  @override
  List<Object?> get props => [
    activeCryptocurrencies,
    upcomingIcos,
    ongoingIcos,
    endedIcos,
    markets,
    total_market_cap,
  ];
}
