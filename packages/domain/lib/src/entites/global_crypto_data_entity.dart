import 'package:equatable/equatable.dart';

class GlobalCryptoDataEntity extends Equatable {
  const GlobalCryptoDataEntity({
    required this.activeCryptocurrencies,
    required this.upcomingIcos,
    required this.ongoingIcos,
    required this.endedIcos,
    required this.markets,
    this.totalMarketCap,
  });

  final int activeCryptocurrencies;
  final int upcomingIcos;
  final int ongoingIcos;
  final int endedIcos;
  final int markets;
  final Map<String, double>? totalMarketCap;

  @override
  List<Object?> get props => [
    activeCryptocurrencies,
    upcomingIcos,
    ongoingIcos,
    endedIcos,
    markets,
    totalMarketCap,
  ];
}
