// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoleModel {

 String get id; String get name; String? get displayName; String? get description; bool get isSystemRole; int get hierarchy; bool get isActive; List<PermissionModel> get permissions; dynamic get isPrimary;
/// Create a copy of RoleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleModelCopyWith<RoleModel> get copyWith => _$RoleModelCopyWithImpl<RoleModel>(this as RoleModel, _$identity);

  /// Serializes this RoleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RoleModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoleModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.isSystemRole, _this.isSystemRole) || other.isSystemRole == _this.isSystemRole)&&(identical(other.hierarchy, _this.hierarchy) || other.hierarchy == _this.hierarchy)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&const DeepCollectionEquality().equals(other.permissions, _this.permissions)&&const DeepCollectionEquality().equals(other.isPrimary, _this.isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RoleModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.displayName,_this.description,_this.isSystemRole,_this.hierarchy,_this.isActive,const DeepCollectionEquality().hash(_this.permissions),const DeepCollectionEquality().hash(_this.isPrimary));
}

@override
String toString() {
  final _this = this as RoleModel;
  return 'RoleModel(id: ${_this.id}, name: ${_this.name}, displayName: ${_this.displayName}, description: ${_this.description}, isSystemRole: ${_this.isSystemRole}, hierarchy: ${_this.hierarchy}, isActive: ${_this.isActive}, permissions: ${_this.permissions}, isPrimary: ${_this.isPrimary})';
}


}

/// @nodoc
abstract mixin class $RoleModelCopyWith<$Res>  {
  factory $RoleModelCopyWith(RoleModel value, $Res Function(RoleModel) _then) = _$RoleModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? displayName, String? description, bool isSystemRole, int hierarchy, bool isActive, List<PermissionModel> permissions, dynamic isPrimary
});




}
/// @nodoc
class _$RoleModelCopyWithImpl<$Res>
    implements $RoleModelCopyWith<$Res> {
  _$RoleModelCopyWithImpl(this._self, this._then);

  final RoleModel _self;
  final $Res Function(RoleModel) _then;

/// Create a copy of RoleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? displayName = freezed,Object? description = freezed,Object? isSystemRole = null,Object? hierarchy = null,Object? isActive = null,Object? permissions = null,Object? isPrimary = freezed,}) {
  return _then(RoleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isSystemRole: null == isSystemRole ? _self.isSystemRole : isSystemRole // ignore: cast_nullable_to_non_nullable
as bool,hierarchy: null == hierarchy ? _self.hierarchy : hierarchy // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionModel>,isPrimary: freezed == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [RoleModel].
extension RoleModelPatterns on RoleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoleModel value)  $default,){
final _that = this;
switch (_that) {
case _RoleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoleModel value)?  $default,){
final _that = this;
switch (_that) {
case _RoleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? displayName,  String? description,  bool isSystemRole,  int hierarchy,  bool isActive,  List<PermissionModel> permissions,  dynamic isPrimary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoleModel() when $default != null:
return $default(_that.id,_that.name,_that.displayName,_that.description,_that.isSystemRole,_that.hierarchy,_that.isActive,_that.permissions,_that.isPrimary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? displayName,  String? description,  bool isSystemRole,  int hierarchy,  bool isActive,  List<PermissionModel> permissions,  dynamic isPrimary)  $default,) {final _that = this;
switch (_that) {
case _RoleModel():
return $default(_that.id,_that.name,_that.displayName,_that.description,_that.isSystemRole,_that.hierarchy,_that.isActive,_that.permissions,_that.isPrimary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? displayName,  String? description,  bool isSystemRole,  int hierarchy,  bool isActive,  List<PermissionModel> permissions,  dynamic isPrimary)?  $default,) {final _that = this;
switch (_that) {
case _RoleModel() when $default != null:
return $default(_that.id,_that.name,_that.displayName,_that.description,_that.isSystemRole,_that.hierarchy,_that.isActive,_that.permissions,_that.isPrimary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoleModel implements RoleModel {
   _RoleModel({required this.id, required this.name, this.displayName, this.description, this.isSystemRole = false, this.hierarchy = 0, this.isActive = false,  List<PermissionModel> permissions = const [], this.isPrimary = false}): _permissions = permissions;
  factory _RoleModel.fromJson(Map<String, dynamic> json) => _$RoleModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? displayName;
@override final  String? description;
@override@JsonKey() final  bool isSystemRole;
@override@JsonKey() final  int hierarchy;
@override@JsonKey() final  bool isActive;
 final  List<PermissionModel> _permissions;
@override@JsonKey() List<PermissionModel> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}

@override@JsonKey() final  dynamic isPrimary;

/// Create a copy of RoleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleModelCopyWith<_RoleModel> get copyWith => __$RoleModelCopyWithImpl<_RoleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.description, description) || other.description == description)&&(identical(other.isSystemRole, isSystemRole) || other.isSystemRole == isSystemRole)&&(identical(other.hierarchy, hierarchy) || other.hierarchy == hierarchy)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.permissions, _permissions)&&const DeepCollectionEquality().equals(other.isPrimary, isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,displayName,description,isSystemRole,hierarchy,isActive,const DeepCollectionEquality().hash(_permissions),const DeepCollectionEquality().hash(isPrimary));
}

@override
String toString() {
    return 'RoleModel(id: $id, name: $name, displayName: $displayName, description: $description, isSystemRole: $isSystemRole, hierarchy: $hierarchy, isActive: $isActive, permissions: $permissions, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$RoleModelCopyWith<$Res> implements $RoleModelCopyWith<$Res> {
  factory _$RoleModelCopyWith(_RoleModel value, $Res Function(_RoleModel) _then) = __$RoleModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? displayName, String? description, bool isSystemRole, int hierarchy, bool isActive, List<PermissionModel> permissions, dynamic isPrimary
});




}
/// @nodoc
class __$RoleModelCopyWithImpl<$Res>
    implements _$RoleModelCopyWith<$Res> {
  __$RoleModelCopyWithImpl(this._self, this._then);

  final _RoleModel _self;
  final $Res Function(_RoleModel) _then;

/// Create a copy of RoleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? displayName = freezed,Object? description = freezed,Object? isSystemRole = null,Object? hierarchy = null,Object? isActive = null,Object? permissions = null,Object? isPrimary = freezed,}) {
  return _then(_RoleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isSystemRole: null == isSystemRole ? _self.isSystemRole : isSystemRole // ignore: cast_nullable_to_non_nullable
as bool,hierarchy: null == hierarchy ? _self.hierarchy : hierarchy // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionModel>,isPrimary: freezed == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
