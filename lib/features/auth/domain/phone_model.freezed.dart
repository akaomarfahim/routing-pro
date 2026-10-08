// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhoneModel {

 String get id; String get countryCode; String get countryISO; String? get phone; bool? get isPrimary;
/// Create a copy of PhoneModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneModelCopyWith<PhoneModel> get copyWith => _$PhoneModelCopyWithImpl<PhoneModel>(this as PhoneModel, _$identity);

  /// Serializes this PhoneModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PhoneModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.countryCode, _this.countryCode) || other.countryCode == _this.countryCode)&&(identical(other.countryISO, _this.countryISO) || other.countryISO == _this.countryISO)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.isPrimary, _this.isPrimary) || other.isPrimary == _this.isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PhoneModel;
  return Object.hash(runtimeType,_this.id,_this.countryCode,_this.countryISO,_this.phone,_this.isPrimary);
}

@override
String toString() {
  final _this = this as PhoneModel;
  return 'PhoneModel(id: ${_this.id}, countryCode: ${_this.countryCode}, countryISO: ${_this.countryISO}, phone: ${_this.phone}, isPrimary: ${_this.isPrimary})';
}


}

/// @nodoc
abstract mixin class $PhoneModelCopyWith<$Res>  {
  factory $PhoneModelCopyWith(PhoneModel value, $Res Function(PhoneModel) _then) = _$PhoneModelCopyWithImpl;
@useResult
$Res call({
 String id, String countryCode, String countryISO, String? phone, bool? isPrimary
});




}
/// @nodoc
class _$PhoneModelCopyWithImpl<$Res>
    implements $PhoneModelCopyWith<$Res> {
  _$PhoneModelCopyWithImpl(this._self, this._then);

  final PhoneModel _self;
  final $Res Function(PhoneModel) _then;

/// Create a copy of PhoneModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? countryCode = null,Object? countryISO = null,Object? phone = freezed,Object? isPrimary = freezed,}) {
  return _then(PhoneModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,countryISO: null == countryISO ? _self.countryISO : countryISO // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,isPrimary: freezed == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PhoneModel].
extension PhoneModelPatterns on PhoneModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhoneModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhoneModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhoneModel value)  $default,){
final _that = this;
switch (_that) {
case _PhoneModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhoneModel value)?  $default,){
final _that = this;
switch (_that) {
case _PhoneModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String countryCode,  String countryISO,  String? phone,  bool? isPrimary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhoneModel() when $default != null:
return $default(_that.id,_that.countryCode,_that.countryISO,_that.phone,_that.isPrimary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String countryCode,  String countryISO,  String? phone,  bool? isPrimary)  $default,) {final _that = this;
switch (_that) {
case _PhoneModel():
return $default(_that.id,_that.countryCode,_that.countryISO,_that.phone,_that.isPrimary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String countryCode,  String countryISO,  String? phone,  bool? isPrimary)?  $default,) {final _that = this;
switch (_that) {
case _PhoneModel() when $default != null:
return $default(_that.id,_that.countryCode,_that.countryISO,_that.phone,_that.isPrimary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhoneModel implements PhoneModel {
   _PhoneModel({required this.id, this.countryCode = '+88', this.countryISO = 'BD', this.phone, this.isPrimary});
  factory _PhoneModel.fromJson(Map<String, dynamic> json) => _$PhoneModelFromJson(json);

@override final  String id;
@override@JsonKey() final  String countryCode;
@override@JsonKey() final  String countryISO;
@override final  String? phone;
@override final  bool? isPrimary;

/// Create a copy of PhoneModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneModelCopyWith<_PhoneModel> get copyWith => __$PhoneModelCopyWithImpl<_PhoneModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhoneModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhoneModel&&(identical(other.id, id) || other.id == id)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryISO, countryISO) || other.countryISO == countryISO)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,countryCode,countryISO,phone,isPrimary);
}

@override
String toString() {
    return 'PhoneModel(id: $id, countryCode: $countryCode, countryISO: $countryISO, phone: $phone, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$PhoneModelCopyWith<$Res> implements $PhoneModelCopyWith<$Res> {
  factory _$PhoneModelCopyWith(_PhoneModel value, $Res Function(_PhoneModel) _then) = __$PhoneModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String countryCode, String countryISO, String? phone, bool? isPrimary
});




}
/// @nodoc
class __$PhoneModelCopyWithImpl<$Res>
    implements _$PhoneModelCopyWith<$Res> {
  __$PhoneModelCopyWithImpl(this._self, this._then);

  final _PhoneModel _self;
  final $Res Function(_PhoneModel) _then;

/// Create a copy of PhoneModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? countryCode = null,Object? countryISO = null,Object? phone = freezed,Object? isPrimary = freezed,}) {
  return _then(_PhoneModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,countryISO: null == countryISO ? _self.countryISO : countryISO // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,isPrimary: freezed == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
