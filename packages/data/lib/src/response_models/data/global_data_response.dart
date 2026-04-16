import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_data_response.freezed.dart';
part 'global_data_response.g.dart';

@freezed
abstract class GlobalDataResponse with _$GlobalDataResponse {
  const factory GlobalDataResponse({CryptoData? data}) =
      _$GlobalDataResponseImpl;

  factory GlobalDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GlobalDataResponseFromJson(json);
}

@freezed
abstract class CryptoData with _$CryptoData {
  const factory CryptoData({
    int? activeCryptocurrencies,
    int? upcomingIcos,
    int? ongoingIcos,
    int? endedIcos,
    int? markets,
    Map<String, double>? totalMarketCap,
    Map<String, double>? totalVolume,
    Map<String, double>? marketCapPercentage,
    double? marketCapChangePercentage24hUsd,
    double? volumeChangePercentage24hUsd,
    int? updatedAt,
  }) = _$CryptoDataImpl;

  factory CryptoData.fromJson(Map<String, dynamic> json) =>
      _$CryptoDataFromJson(json);
}
