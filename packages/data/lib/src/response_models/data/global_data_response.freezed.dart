// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
GlobalDataResponse _$GlobalDataResponseFromJson(
  Map<String, dynamic> json
) {
    return _$GlobalDataResponseImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$GlobalDataResponse {

 CryptoData? get data;
/// Create a copy of GlobalDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalDataResponseCopyWith<GlobalDataResponse> get copyWith => _$GlobalDataResponseCopyWithImpl<GlobalDataResponse>(this as GlobalDataResponse, _$identity);

  /// Serializes this GlobalDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalDataResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'GlobalDataResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $GlobalDataResponseCopyWith<$Res>  {
  factory $GlobalDataResponseCopyWith(GlobalDataResponse value, $Res Function(GlobalDataResponse) _then) = _$GlobalDataResponseCopyWithImpl;
@useResult
$Res call({
 CryptoData? data
});


$CryptoDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$GlobalDataResponseCopyWithImpl<$Res>
    implements $GlobalDataResponseCopyWith<$Res> {
  _$GlobalDataResponseCopyWithImpl(this._self, this._then);

  final GlobalDataResponse _self;
  final $Res Function(GlobalDataResponse) _then;

/// Create a copy of GlobalDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CryptoData?,
  ));
}
/// Create a copy of GlobalDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CryptoDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GlobalDataResponse].
extension GlobalDataResponsePatterns on GlobalDataResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _$GlobalDataResponseImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _$GlobalDataResponseImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _$GlobalDataResponseImpl value)  $default,){
final _that = this;
switch (_that) {
case _$GlobalDataResponseImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _$GlobalDataResponseImpl value)?  $default,){
final _that = this;
switch (_that) {
case _$GlobalDataResponseImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CryptoData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _$GlobalDataResponseImpl() when $default != null:
return $default(_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CryptoData? data)  $default,) {final _that = this;
switch (_that) {
case _$GlobalDataResponseImpl():
return $default(_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CryptoData? data)?  $default,) {final _that = this;
switch (_that) {
case _$GlobalDataResponseImpl() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _$GlobalDataResponseImpl implements GlobalDataResponse {
  const _$GlobalDataResponseImpl({this.data});
  factory _$GlobalDataResponseImpl.fromJson(Map<String, dynamic> json) => _$$GlobalDataResponseImplFromJson(json);

@override final  CryptoData? data;

/// Create a copy of GlobalDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$$GlobalDataResponseImplCopyWith<_$GlobalDataResponseImpl> get copyWith => __$$GlobalDataResponseImplCopyWithImpl<_$GlobalDataResponseImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$$GlobalDataResponseImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GlobalDataResponseImpl&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'GlobalDataResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$$GlobalDataResponseImplCopyWith<$Res> implements $GlobalDataResponseCopyWith<$Res> {
  factory _$$GlobalDataResponseImplCopyWith(_$GlobalDataResponseImpl value, $Res Function(_$GlobalDataResponseImpl) _then) = __$$GlobalDataResponseImplCopyWithImpl;
@override @useResult
$Res call({
 CryptoData? data
});


@override $CryptoDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$$GlobalDataResponseImplCopyWithImpl<$Res>
    implements _$$GlobalDataResponseImplCopyWith<$Res> {
  __$$GlobalDataResponseImplCopyWithImpl(this._self, this._then);

  final _$GlobalDataResponseImpl _self;
  final $Res Function(_$GlobalDataResponseImpl) _then;

/// Create a copy of GlobalDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_$GlobalDataResponseImpl(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CryptoData?,
  ));
}

/// Create a copy of GlobalDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CryptoDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

CryptoData _$CryptoDataFromJson(
  Map<String, dynamic> json
) {
    return _$CryptoDataImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$CryptoData {

 int? get activeCryptocurrencies; int? get upcomingIcos; int? get ongoingIcos; int? get endedIcos; int? get markets; Map<String, double>? get totalMarketCap; Map<String, double>? get totalVolume; Map<String, double>? get marketCapPercentage; double? get marketCapChangePercentage24hUsd; double? get volumeChangePercentage24hUsd; int? get updatedAt;
/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoDataCopyWith<CryptoData> get copyWith => _$CryptoDataCopyWithImpl<CryptoData>(this as CryptoData, _$identity);

  /// Serializes this CryptoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoData&&(identical(other.activeCryptocurrencies, activeCryptocurrencies) || other.activeCryptocurrencies == activeCryptocurrencies)&&(identical(other.upcomingIcos, upcomingIcos) || other.upcomingIcos == upcomingIcos)&&(identical(other.ongoingIcos, ongoingIcos) || other.ongoingIcos == ongoingIcos)&&(identical(other.endedIcos, endedIcos) || other.endedIcos == endedIcos)&&(identical(other.markets, markets) || other.markets == markets)&&const DeepCollectionEquality().equals(other.totalMarketCap, totalMarketCap)&&const DeepCollectionEquality().equals(other.totalVolume, totalVolume)&&const DeepCollectionEquality().equals(other.marketCapPercentage, marketCapPercentage)&&(identical(other.marketCapChangePercentage24hUsd, marketCapChangePercentage24hUsd) || other.marketCapChangePercentage24hUsd == marketCapChangePercentage24hUsd)&&(identical(other.volumeChangePercentage24hUsd, volumeChangePercentage24hUsd) || other.volumeChangePercentage24hUsd == volumeChangePercentage24hUsd)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeCryptocurrencies,upcomingIcos,ongoingIcos,endedIcos,markets,const DeepCollectionEquality().hash(totalMarketCap),const DeepCollectionEquality().hash(totalVolume),const DeepCollectionEquality().hash(marketCapPercentage),marketCapChangePercentage24hUsd,volumeChangePercentage24hUsd,updatedAt);

@override
String toString() {
  return 'CryptoData(activeCryptocurrencies: $activeCryptocurrencies, upcomingIcos: $upcomingIcos, ongoingIcos: $ongoingIcos, endedIcos: $endedIcos, markets: $markets, totalMarketCap: $totalMarketCap, totalVolume: $totalVolume, marketCapPercentage: $marketCapPercentage, marketCapChangePercentage24hUsd: $marketCapChangePercentage24hUsd, volumeChangePercentage24hUsd: $volumeChangePercentage24hUsd, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CryptoDataCopyWith<$Res>  {
  factory $CryptoDataCopyWith(CryptoData value, $Res Function(CryptoData) _then) = _$CryptoDataCopyWithImpl;
@useResult
$Res call({
 int? activeCryptocurrencies, int? upcomingIcos, int? ongoingIcos, int? endedIcos, int? markets, Map<String, double>? totalMarketCap, Map<String, double>? totalVolume, Map<String, double>? marketCapPercentage, double? marketCapChangePercentage24hUsd, double? volumeChangePercentage24hUsd, int? updatedAt
});




}
/// @nodoc
class _$CryptoDataCopyWithImpl<$Res>
    implements $CryptoDataCopyWith<$Res> {
  _$CryptoDataCopyWithImpl(this._self, this._then);

  final CryptoData _self;
  final $Res Function(CryptoData) _then;

/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeCryptocurrencies = freezed,Object? upcomingIcos = freezed,Object? ongoingIcos = freezed,Object? endedIcos = freezed,Object? markets = freezed,Object? totalMarketCap = freezed,Object? totalVolume = freezed,Object? marketCapPercentage = freezed,Object? marketCapChangePercentage24hUsd = freezed,Object? volumeChangePercentage24hUsd = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
activeCryptocurrencies: freezed == activeCryptocurrencies ? _self.activeCryptocurrencies : activeCryptocurrencies // ignore: cast_nullable_to_non_nullable
as int?,upcomingIcos: freezed == upcomingIcos ? _self.upcomingIcos : upcomingIcos // ignore: cast_nullable_to_non_nullable
as int?,ongoingIcos: freezed == ongoingIcos ? _self.ongoingIcos : ongoingIcos // ignore: cast_nullable_to_non_nullable
as int?,endedIcos: freezed == endedIcos ? _self.endedIcos : endedIcos // ignore: cast_nullable_to_non_nullable
as int?,markets: freezed == markets ? _self.markets : markets // ignore: cast_nullable_to_non_nullable
as int?,totalMarketCap: freezed == totalMarketCap ? _self.totalMarketCap : totalMarketCap // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,totalVolume: freezed == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,marketCapPercentage: freezed == marketCapPercentage ? _self.marketCapPercentage : marketCapPercentage // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,marketCapChangePercentage24hUsd: freezed == marketCapChangePercentage24hUsd ? _self.marketCapChangePercentage24hUsd : marketCapChangePercentage24hUsd // ignore: cast_nullable_to_non_nullable
as double?,volumeChangePercentage24hUsd: freezed == volumeChangePercentage24hUsd ? _self.volumeChangePercentage24hUsd : volumeChangePercentage24hUsd // ignore: cast_nullable_to_non_nullable
as double?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CryptoData].
extension CryptoDataPatterns on CryptoData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _$CryptoDataImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _$CryptoDataImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _$CryptoDataImpl value)  $default,){
final _that = this;
switch (_that) {
case _$CryptoDataImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _$CryptoDataImpl value)?  $default,){
final _that = this;
switch (_that) {
case _$CryptoDataImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? activeCryptocurrencies,  int? upcomingIcos,  int? ongoingIcos,  int? endedIcos,  int? markets,  Map<String, double>? totalMarketCap,  Map<String, double>? totalVolume,  Map<String, double>? marketCapPercentage,  double? marketCapChangePercentage24hUsd,  double? volumeChangePercentage24hUsd,  int? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _$CryptoDataImpl() when $default != null:
return $default(_that.activeCryptocurrencies,_that.upcomingIcos,_that.ongoingIcos,_that.endedIcos,_that.markets,_that.totalMarketCap,_that.totalVolume,_that.marketCapPercentage,_that.marketCapChangePercentage24hUsd,_that.volumeChangePercentage24hUsd,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? activeCryptocurrencies,  int? upcomingIcos,  int? ongoingIcos,  int? endedIcos,  int? markets,  Map<String, double>? totalMarketCap,  Map<String, double>? totalVolume,  Map<String, double>? marketCapPercentage,  double? marketCapChangePercentage24hUsd,  double? volumeChangePercentage24hUsd,  int? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _$CryptoDataImpl():
return $default(_that.activeCryptocurrencies,_that.upcomingIcos,_that.ongoingIcos,_that.endedIcos,_that.markets,_that.totalMarketCap,_that.totalVolume,_that.marketCapPercentage,_that.marketCapChangePercentage24hUsd,_that.volumeChangePercentage24hUsd,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? activeCryptocurrencies,  int? upcomingIcos,  int? ongoingIcos,  int? endedIcos,  int? markets,  Map<String, double>? totalMarketCap,  Map<String, double>? totalVolume,  Map<String, double>? marketCapPercentage,  double? marketCapChangePercentage24hUsd,  double? volumeChangePercentage24hUsd,  int? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _$CryptoDataImpl() when $default != null:
return $default(_that.activeCryptocurrencies,_that.upcomingIcos,_that.ongoingIcos,_that.endedIcos,_that.markets,_that.totalMarketCap,_that.totalVolume,_that.marketCapPercentage,_that.marketCapChangePercentage24hUsd,_that.volumeChangePercentage24hUsd,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _$CryptoDataImpl implements CryptoData {
  const _$CryptoDataImpl({this.activeCryptocurrencies, this.upcomingIcos, this.ongoingIcos, this.endedIcos, this.markets, final  Map<String, double>? totalMarketCap, final  Map<String, double>? totalVolume, final  Map<String, double>? marketCapPercentage, this.marketCapChangePercentage24hUsd, this.volumeChangePercentage24hUsd, this.updatedAt}): _totalMarketCap = totalMarketCap,_totalVolume = totalVolume,_marketCapPercentage = marketCapPercentage;
  factory _$CryptoDataImpl.fromJson(Map<String, dynamic> json) => _$$CryptoDataImplFromJson(json);

@override final  int? activeCryptocurrencies;
@override final  int? upcomingIcos;
@override final  int? ongoingIcos;
@override final  int? endedIcos;
@override final  int? markets;
 final  Map<String, double>? _totalMarketCap;
@override Map<String, double>? get totalMarketCap {
  final value = _totalMarketCap;
  if (value == null) return null;
  if (_totalMarketCap is EqualUnmodifiableMapView) return _totalMarketCap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, double>? _totalVolume;
@override Map<String, double>? get totalVolume {
  final value = _totalVolume;
  if (value == null) return null;
  if (_totalVolume is EqualUnmodifiableMapView) return _totalVolume;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, double>? _marketCapPercentage;
@override Map<String, double>? get marketCapPercentage {
  final value = _marketCapPercentage;
  if (value == null) return null;
  if (_marketCapPercentage is EqualUnmodifiableMapView) return _marketCapPercentage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  double? marketCapChangePercentage24hUsd;
@override final  double? volumeChangePercentage24hUsd;
@override final  int? updatedAt;

/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$$CryptoDataImplCopyWith<_$CryptoDataImpl> get copyWith => __$$CryptoDataImplCopyWithImpl<_$CryptoDataImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$$CryptoDataImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CryptoDataImpl&&(identical(other.activeCryptocurrencies, activeCryptocurrencies) || other.activeCryptocurrencies == activeCryptocurrencies)&&(identical(other.upcomingIcos, upcomingIcos) || other.upcomingIcos == upcomingIcos)&&(identical(other.ongoingIcos, ongoingIcos) || other.ongoingIcos == ongoingIcos)&&(identical(other.endedIcos, endedIcos) || other.endedIcos == endedIcos)&&(identical(other.markets, markets) || other.markets == markets)&&const DeepCollectionEquality().equals(other._totalMarketCap, _totalMarketCap)&&const DeepCollectionEquality().equals(other._totalVolume, _totalVolume)&&const DeepCollectionEquality().equals(other._marketCapPercentage, _marketCapPercentage)&&(identical(other.marketCapChangePercentage24hUsd, marketCapChangePercentage24hUsd) || other.marketCapChangePercentage24hUsd == marketCapChangePercentage24hUsd)&&(identical(other.volumeChangePercentage24hUsd, volumeChangePercentage24hUsd) || other.volumeChangePercentage24hUsd == volumeChangePercentage24hUsd)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeCryptocurrencies,upcomingIcos,ongoingIcos,endedIcos,markets,const DeepCollectionEquality().hash(_totalMarketCap),const DeepCollectionEquality().hash(_totalVolume),const DeepCollectionEquality().hash(_marketCapPercentage),marketCapChangePercentage24hUsd,volumeChangePercentage24hUsd,updatedAt);

@override
String toString() {
  return 'CryptoData(activeCryptocurrencies: $activeCryptocurrencies, upcomingIcos: $upcomingIcos, ongoingIcos: $ongoingIcos, endedIcos: $endedIcos, markets: $markets, totalMarketCap: $totalMarketCap, totalVolume: $totalVolume, marketCapPercentage: $marketCapPercentage, marketCapChangePercentage24hUsd: $marketCapChangePercentage24hUsd, volumeChangePercentage24hUsd: $volumeChangePercentage24hUsd, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$$CryptoDataImplCopyWith<$Res> implements $CryptoDataCopyWith<$Res> {
  factory _$$CryptoDataImplCopyWith(_$CryptoDataImpl value, $Res Function(_$CryptoDataImpl) _then) = __$$CryptoDataImplCopyWithImpl;
@override @useResult
$Res call({
 int? activeCryptocurrencies, int? upcomingIcos, int? ongoingIcos, int? endedIcos, int? markets, Map<String, double>? totalMarketCap, Map<String, double>? totalVolume, Map<String, double>? marketCapPercentage, double? marketCapChangePercentage24hUsd, double? volumeChangePercentage24hUsd, int? updatedAt
});




}
/// @nodoc
class __$$CryptoDataImplCopyWithImpl<$Res>
    implements _$$CryptoDataImplCopyWith<$Res> {
  __$$CryptoDataImplCopyWithImpl(this._self, this._then);

  final _$CryptoDataImpl _self;
  final $Res Function(_$CryptoDataImpl) _then;

/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeCryptocurrencies = freezed,Object? upcomingIcos = freezed,Object? ongoingIcos = freezed,Object? endedIcos = freezed,Object? markets = freezed,Object? totalMarketCap = freezed,Object? totalVolume = freezed,Object? marketCapPercentage = freezed,Object? marketCapChangePercentage24hUsd = freezed,Object? volumeChangePercentage24hUsd = freezed,Object? updatedAt = freezed,}) {
  return _then(_$CryptoDataImpl(
activeCryptocurrencies: freezed == activeCryptocurrencies ? _self.activeCryptocurrencies : activeCryptocurrencies // ignore: cast_nullable_to_non_nullable
as int?,upcomingIcos: freezed == upcomingIcos ? _self.upcomingIcos : upcomingIcos // ignore: cast_nullable_to_non_nullable
as int?,ongoingIcos: freezed == ongoingIcos ? _self.ongoingIcos : ongoingIcos // ignore: cast_nullable_to_non_nullable
as int?,endedIcos: freezed == endedIcos ? _self.endedIcos : endedIcos // ignore: cast_nullable_to_non_nullable
as int?,markets: freezed == markets ? _self.markets : markets // ignore: cast_nullable_to_non_nullable
as int?,totalMarketCap: freezed == totalMarketCap ? _self._totalMarketCap : totalMarketCap // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,totalVolume: freezed == totalVolume ? _self._totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,marketCapPercentage: freezed == marketCapPercentage ? _self._marketCapPercentage : marketCapPercentage // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,marketCapChangePercentage24hUsd: freezed == marketCapChangePercentage24hUsd ? _self.marketCapChangePercentage24hUsd : marketCapChangePercentage24hUsd // ignore: cast_nullable_to_non_nullable
as double?,volumeChangePercentage24hUsd: freezed == volumeChangePercentage24hUsd ? _self.volumeChangePercentage24hUsd : volumeChangePercentage24hUsd // ignore: cast_nullable_to_non_nullable
as double?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
