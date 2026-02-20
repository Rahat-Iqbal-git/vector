import 'package:equatable/equatable.dart';

class CryptoCoinEntity extends Equatable {
  final String name;
  final double price;
  final String symbol;
  final String icon;

  const CryptoCoinEntity({
    required this.name,
    required this.price,
    required this.symbol,
    required this.icon,
  });

  @override
  List<Object?> get props => [name, price, symbol, icon];
}