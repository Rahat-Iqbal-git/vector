import 'package:equatable/equatable.dart';

class CryptoCoinEntity extends Equatable {
  const CryptoCoinEntity({
    required this.name,
    required this.price,
    required this.symbol,
    required this.icon,
    required this.marketCap,
    required this.marketCapPercentage,
  });

  final String name;
  final double price;
  final String symbol;
  final String icon;
  final double marketCap;
  final double marketCapPercentage;

  @override
  List<Object?> get props => [
    name,
    price,
    symbol,
    icon,
    marketCap,
    marketCapPercentage,
  ];
}
