// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalDataResponseImpl _$$GlobalDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$GlobalDataResponseImpl(
  data: json['data'] == null
      ? null
      : CryptoData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$GlobalDataResponseImplToJson(
  _$GlobalDataResponseImpl instance,
) => <String, dynamic>{'data': instance.data?.toJson()};

_$CryptoDataImpl _$$CryptoDataImplFromJson(
  Map<String, dynamic> json,
) => _$CryptoDataImpl(
  activeCryptocurrencies: (json['active_cryptocurrencies'] as num?)?.toInt(),
  upcomingIcos: (json['upcoming_icos'] as num?)?.toInt(),
  ongoingIcos: (json['ongoing_icos'] as num?)?.toInt(),
  endedIcos: (json['ended_icos'] as num?)?.toInt(),
  markets: (json['markets'] as num?)?.toInt(),
  totalMarketCap: (json['total_market_cap'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  totalVolume: (json['total_volume'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  marketCapPercentage: (json['market_cap_percentage'] as Map<String, dynamic>?)
      ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  marketCapChangePercentage24hUsd:
      (json['market_cap_change_percentage24h_usd'] as num?)?.toDouble(),
  volumeChangePercentage24hUsd:
      (json['volume_change_percentage24h_usd'] as num?)?.toDouble(),
  updatedAt: (json['updated_at'] as num?)?.toInt(),
);

Map<String, dynamic> _$$CryptoDataImplToJson(_$CryptoDataImpl instance) =>
    <String, dynamic>{
      'active_cryptocurrencies': instance.activeCryptocurrencies,
      'upcoming_icos': instance.upcomingIcos,
      'ongoing_icos': instance.ongoingIcos,
      'ended_icos': instance.endedIcos,
      'markets': instance.markets,
      'total_market_cap': instance.totalMarketCap,
      'total_volume': instance.totalVolume,
      'market_cap_percentage': instance.marketCapPercentage,
      'market_cap_change_percentage24h_usd':
          instance.marketCapChangePercentage24hUsd,
      'volume_change_percentage24h_usd': instance.volumeChangePercentage24hUsd,
      'updated_at': instance.updatedAt,
    };
