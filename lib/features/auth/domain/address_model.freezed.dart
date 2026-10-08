// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressModel {

 int? get id; String? get label; String? get type; String? get house; String? get street; String? get city; String? get state; String? get zipCode; String? get country; String? get countryCode; String? get landmark; double? get latitude; double? get longitude; double? get accuracy; String? get geoHash; bool? get isVerified; bool? get isPrimary; String? get validationStatus; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressModelCopyWith<AddressModel> get copyWith => _$AddressModelCopyWithImpl<AddressModel>(this as AddressModel, _$identity);

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AddressModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.house, _this.house) || other.house == _this.house)&&(identical(other.street, _this.street) || other.street == _this.street)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.state, _this.state) || other.state == _this.state)&&(identical(other.zipCode, _this.zipCode) || other.zipCode == _this.zipCode)&&(identical(other.country, _this.country) || other.country == _this.country)&&(identical(other.countryCode, _this.countryCode) || other.countryCode == _this.countryCode)&&(identical(other.landmark, _this.landmark) || other.landmark == _this.landmark)&&(identical(other.latitude, _this.latitude) || other.latitude == _this.latitude)&&(identical(other.longitude, _this.longitude) || other.longitude == _this.longitude)&&(identical(other.accuracy, _this.accuracy) || other.accuracy == _this.accuracy)&&(identical(other.geoHash, _this.geoHash) || other.geoHash == _this.geoHash)&&(identical(other.isVerified, _this.isVerified) || other.isVerified == _this.isVerified)&&(identical(other.isPrimary, _this.isPrimary) || other.isPrimary == _this.isPrimary)&&(identical(other.validationStatus, _this.validationStatus) || other.validationStatus == _this.validationStatus)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AddressModel;
  return Object.hashAll([runtimeType,_this.id,_this.label,_this.type,_this.house,_this.street,_this.city,_this.state,_this.zipCode,_this.country,_this.countryCode,_this.landmark,_this.latitude,_this.longitude,_this.accuracy,_this.geoHash,_this.isVerified,_this.isPrimary,_this.validationStatus,_this.createdAt,_this.updatedAt]);
}

@override
String toString() {
  final _this = this as AddressModel;
  return 'AddressModel(id: ${_this.id}, label: ${_this.label}, type: ${_this.type}, house: ${_this.house}, street: ${_this.street}, city: ${_this.city}, state: ${_this.state}, zipCode: ${_this.zipCode}, country: ${_this.country}, countryCode: ${_this.countryCode}, landmark: ${_this.landmark}, latitude: ${_this.latitude}, longitude: ${_this.longitude}, accuracy: ${_this.accuracy}, geoHash: ${_this.geoHash}, isVerified: ${_this.isVerified}, isPrimary: ${_this.isPrimary}, validationStatus: ${_this.validationStatus}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $AddressModelCopyWith<$Res>  {
  factory $AddressModelCopyWith(AddressModel value, $Res Function(AddressModel) _then) = _$AddressModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? label, String? type, String? house, String? street, String? city, String? state, String? zipCode, String? country, String? countryCode, String? landmark, double? latitude, double? longitude, double? accuracy, String? geoHash, bool? isVerified, bool? isPrimary, String? validationStatus, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$AddressModelCopyWithImpl<$Res>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._self, this._then);

  final AddressModel _self;
  final $Res Function(AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? label = freezed,Object? type = freezed,Object? house = freezed,Object? street = freezed,Object? city = freezed,Object? state = freezed,Object? zipCode = freezed,Object? country = freezed,Object? countryCode = freezed,Object? landmark = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? geoHash = freezed,Object? isVerified = freezed,Object? isPrimary = freezed,Object? validationStatus = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(AddressModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,landmark: freezed == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,geoHash: freezed == geoHash ? _self.geoHash : geoHash // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,isPrimary: freezed == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool?,validationStatus: freezed == validationStatus ? _self.validationStatus : validationStatus // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressModel].
extension AddressModelPatterns on AddressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressModel value)  $default,){
final _that = this;
switch (_that) {
case _AddressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? label,  String? type,  String? house,  String? street,  String? city,  String? state,  String? zipCode,  String? country,  String? countryCode,  String? landmark,  double? latitude,  double? longitude,  double? accuracy,  String? geoHash,  bool? isVerified,  bool? isPrimary,  String? validationStatus,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that.id,_that.label,_that.type,_that.house,_that.street,_that.city,_that.state,_that.zipCode,_that.country,_that.countryCode,_that.landmark,_that.latitude,_that.longitude,_that.accuracy,_that.geoHash,_that.isVerified,_that.isPrimary,_that.validationStatus,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? label,  String? type,  String? house,  String? street,  String? city,  String? state,  String? zipCode,  String? country,  String? countryCode,  String? landmark,  double? latitude,  double? longitude,  double? accuracy,  String? geoHash,  bool? isVerified,  bool? isPrimary,  String? validationStatus,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AddressModel():
return $default(_that.id,_that.label,_that.type,_that.house,_that.street,_that.city,_that.state,_that.zipCode,_that.country,_that.countryCode,_that.landmark,_that.latitude,_that.longitude,_that.accuracy,_that.geoHash,_that.isVerified,_that.isPrimary,_that.validationStatus,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? label,  String? type,  String? house,  String? street,  String? city,  String? state,  String? zipCode,  String? country,  String? countryCode,  String? landmark,  double? latitude,  double? longitude,  double? accuracy,  String? geoHash,  bool? isVerified,  bool? isPrimary,  String? validationStatus,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that.id,_that.label,_that.type,_that.house,_that.street,_that.city,_that.state,_that.zipCode,_that.country,_that.countryCode,_that.landmark,_that.latitude,_that.longitude,_that.accuracy,_that.geoHash,_that.isVerified,_that.isPrimary,_that.validationStatus,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressModel implements AddressModel {
  const _AddressModel({this.id, this.label, this.type, this.house, this.street, this.city, this.state, this.zipCode, this.country, this.countryCode, this.landmark, this.latitude, this.longitude, this.accuracy, this.geoHash, this.isVerified, this.isPrimary, this.validationStatus, this.createdAt, this.updatedAt});
  factory _AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);

@override final  int? id;
@override final  String? label;
@override final  String? type;
@override final  String? house;
@override final  String? street;
@override final  String? city;
@override final  String? state;
@override final  String? zipCode;
@override final  String? country;
@override final  String? countryCode;
@override final  String? landmark;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;
@override final  String? geoHash;
@override final  bool? isVerified;
@override final  bool? isPrimary;
@override final  String? validationStatus;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressModelCopyWith<_AddressModel> get copyWith => __$AddressModelCopyWithImpl<_AddressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&(identical(other.house, house) || other.house == house)&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.geoHash, geoHash) || other.geoHash == geoHash)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.validationStatus, validationStatus) || other.validationStatus == validationStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,label,type,house,street,city,state,zipCode,country,countryCode,landmark,latitude,longitude,accuracy,geoHash,isVerified,isPrimary,validationStatus,createdAt,updatedAt]);
}

@override
String toString() {
    return 'AddressModel(id: $id, label: $label, type: $type, house: $house, street: $street, city: $city, state: $state, zipCode: $zipCode, country: $country, countryCode: $countryCode, landmark: $landmark, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, geoHash: $geoHash, isVerified: $isVerified, isPrimary: $isPrimary, validationStatus: $validationStatus, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AddressModelCopyWith<$Res> implements $AddressModelCopyWith<$Res> {
  factory _$AddressModelCopyWith(_AddressModel value, $Res Function(_AddressModel) _then) = __$AddressModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? label, String? type, String? house, String? street, String? city, String? state, String? zipCode, String? country, String? countryCode, String? landmark, double? latitude, double? longitude, double? accuracy, String? geoHash, bool? isVerified, bool? isPrimary, String? validationStatus, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$AddressModelCopyWithImpl<$Res>
    implements _$AddressModelCopyWith<$Res> {
  __$AddressModelCopyWithImpl(this._self, this._then);

  final _AddressModel _self;
  final $Res Function(_AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? label = freezed,Object? type = freezed,Object? house = freezed,Object? street = freezed,Object? city = freezed,Object? state = freezed,Object? zipCode = freezed,Object? country = freezed,Object? countryCode = freezed,Object? landmark = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? geoHash = freezed,Object? isVerified = freezed,Object? isPrimary = freezed,Object? validationStatus = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_AddressModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,landmark: freezed == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,geoHash: freezed == geoHash ? _self.geoHash : geoHash // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,isPrimary: freezed == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool?,validationStatus: freezed == validationStatus ? _self.validationStatus : validationStatus // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
