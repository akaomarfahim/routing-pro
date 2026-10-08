// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Session {

 String get userId; String get displayName; String get email; String get outletId; String get accessToken; String get refreshToken; DateTime get accessTokenExpiresAt; bool get isEmailVerified; RoleModel? get primaryRole; List<RoleModel> get roles; List<PermissionModel> get permissions;
/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionCopyWith<Session> get copyWith => _$SessionCopyWithImpl<Session>(this as Session, _$identity);

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Session;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Session&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.outletId, _this.outletId) || other.outletId == _this.outletId)&&(identical(other.accessToken, _this.accessToken) || other.accessToken == _this.accessToken)&&(identical(other.refreshToken, _this.refreshToken) || other.refreshToken == _this.refreshToken)&&(identical(other.accessTokenExpiresAt, _this.accessTokenExpiresAt) || other.accessTokenExpiresAt == _this.accessTokenExpiresAt)&&(identical(other.isEmailVerified, _this.isEmailVerified) || other.isEmailVerified == _this.isEmailVerified)&&(identical(other.primaryRole, _this.primaryRole) || other.primaryRole == _this.primaryRole)&&const DeepCollectionEquality().equals(other.roles, _this.roles)&&const DeepCollectionEquality().equals(other.permissions, _this.permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Session;
  return Object.hash(runtimeType,_this.userId,_this.displayName,_this.email,_this.outletId,_this.accessToken,_this.refreshToken,_this.accessTokenExpiresAt,_this.isEmailVerified,_this.primaryRole,const DeepCollectionEquality().hash(_this.roles),const DeepCollectionEquality().hash(_this.permissions));
}

@override
String toString() {
  final _this = this as Session;
  return 'Session(userId: ${_this.userId}, displayName: ${_this.displayName}, email: ${_this.email}, outletId: ${_this.outletId}, accessToken: ${_this.accessToken}, refreshToken: ${_this.refreshToken}, accessTokenExpiresAt: ${_this.accessTokenExpiresAt}, isEmailVerified: ${_this.isEmailVerified}, primaryRole: ${_this.primaryRole}, roles: ${_this.roles}, permissions: ${_this.permissions})';
}


}

/// @nodoc
abstract mixin class $SessionCopyWith<$Res>  {
  factory $SessionCopyWith(Session value, $Res Function(Session) _then) = _$SessionCopyWithImpl;
@useResult
$Res call({
 String userId, String displayName, String email, String outletId, String accessToken, String refreshToken, DateTime accessTokenExpiresAt, bool isEmailVerified, RoleModel? primaryRole, List<RoleModel> roles, List<PermissionModel> permissions
});


$RoleModelCopyWith<$Res>? get primaryRole;

}
/// @nodoc
class _$SessionCopyWithImpl<$Res>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._self, this._then);

  final Session _self;
  final $Res Function(Session) _then;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? displayName = null,Object? email = null,Object? outletId = null,Object? accessToken = null,Object? refreshToken = null,Object? accessTokenExpiresAt = null,Object? isEmailVerified = null,Object? primaryRole = freezed,Object? roles = null,Object? permissions = null,}) {
  return _then(Session(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,outletId: null == outletId ? _self.outletId : outletId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresAt: null == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,primaryRole: freezed == primaryRole ? _self.primaryRole : primaryRole // ignore: cast_nullable_to_non_nullable
as RoleModel?,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<RoleModel>,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionModel>,
  ));
}
/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleModelCopyWith<$Res>? get primaryRole {
    if (_self.primaryRole == null) {
    return null;
  }

  return $RoleModelCopyWith<$Res>(_self.primaryRole!, (value) {
    return _then(_self.copyWith(primaryRole: value));
  });
}
}


/// Adds pattern-matching-related methods to [Session].
extension SessionPatterns on Session {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Session value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Session() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Session value)  $default,){
final _that = this;
switch (_that) {
case _Session():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Session value)?  $default,){
final _that = this;
switch (_that) {
case _Session() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String displayName,  String email,  String outletId,  String accessToken,  String refreshToken,  DateTime accessTokenExpiresAt,  bool isEmailVerified,  RoleModel? primaryRole,  List<RoleModel> roles,  List<PermissionModel> permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Session() when $default != null:
return $default(_that.userId,_that.displayName,_that.email,_that.outletId,_that.accessToken,_that.refreshToken,_that.accessTokenExpiresAt,_that.isEmailVerified,_that.primaryRole,_that.roles,_that.permissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String displayName,  String email,  String outletId,  String accessToken,  String refreshToken,  DateTime accessTokenExpiresAt,  bool isEmailVerified,  RoleModel? primaryRole,  List<RoleModel> roles,  List<PermissionModel> permissions)  $default,) {final _that = this;
switch (_that) {
case _Session():
return $default(_that.userId,_that.displayName,_that.email,_that.outletId,_that.accessToken,_that.refreshToken,_that.accessTokenExpiresAt,_that.isEmailVerified,_that.primaryRole,_that.roles,_that.permissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String displayName,  String email,  String outletId,  String accessToken,  String refreshToken,  DateTime accessTokenExpiresAt,  bool isEmailVerified,  RoleModel? primaryRole,  List<RoleModel> roles,  List<PermissionModel> permissions)?  $default,) {final _that = this;
switch (_that) {
case _Session() when $default != null:
return $default(_that.userId,_that.displayName,_that.email,_that.outletId,_that.accessToken,_that.refreshToken,_that.accessTokenExpiresAt,_that.isEmailVerified,_that.primaryRole,_that.roles,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Session extends Session {
  const _Session({required this.userId, required this.displayName, required this.email, required this.outletId, required this.accessToken, required this.refreshToken, required this.accessTokenExpiresAt, required this.isEmailVerified, this.primaryRole,  List<RoleModel> roles = const [],  List<PermissionModel> permissions = const []}): _roles = roles,_permissions = permissions,super._();
  factory _Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);

@override final  String userId;
@override final  String displayName;
@override final  String email;
@override final  String outletId;
@override final  String accessToken;
@override final  String refreshToken;
@override final  DateTime accessTokenExpiresAt;
@override final  bool isEmailVerified;
@override final  RoleModel? primaryRole;
 final  List<RoleModel> _roles;
@override@JsonKey() List<RoleModel> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}

 final  List<PermissionModel> _permissions;
@override@JsonKey() List<PermissionModel> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}


/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionCopyWith<_Session> get copyWith => __$SessionCopyWithImpl<_Session>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Session&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.outletId, outletId) || other.outletId == outletId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessTokenExpiresAt, accessTokenExpiresAt) || other.accessTokenExpiresAt == accessTokenExpiresAt)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.primaryRole, primaryRole) || other.primaryRole == primaryRole)&&const DeepCollectionEquality().equals(other.roles, _roles)&&const DeepCollectionEquality().equals(other.permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,displayName,email,outletId,accessToken,refreshToken,accessTokenExpiresAt,isEmailVerified,primaryRole,const DeepCollectionEquality().hash(_roles),const DeepCollectionEquality().hash(_permissions));
}

@override
String toString() {
    return 'Session(userId: $userId, displayName: $displayName, email: $email, outletId: $outletId, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, isEmailVerified: $isEmailVerified, primaryRole: $primaryRole, roles: $roles, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$SessionCopyWith(_Session value, $Res Function(_Session) _then) = __$SessionCopyWithImpl;
@override @useResult
$Res call({
 String userId, String displayName, String email, String outletId, String accessToken, String refreshToken, DateTime accessTokenExpiresAt, bool isEmailVerified, RoleModel? primaryRole, List<RoleModel> roles, List<PermissionModel> permissions
});


@override $RoleModelCopyWith<$Res>? get primaryRole;

}
/// @nodoc
class __$SessionCopyWithImpl<$Res>
    implements _$SessionCopyWith<$Res> {
  __$SessionCopyWithImpl(this._self, this._then);

  final _Session _self;
  final $Res Function(_Session) _then;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? displayName = null,Object? email = null,Object? outletId = null,Object? accessToken = null,Object? refreshToken = null,Object? accessTokenExpiresAt = null,Object? isEmailVerified = null,Object? primaryRole = freezed,Object? roles = null,Object? permissions = null,}) {
  return _then(_Session(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,outletId: null == outletId ? _self.outletId : outletId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresAt: null == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,primaryRole: freezed == primaryRole ? _self.primaryRole : primaryRole // ignore: cast_nullable_to_non_nullable
as RoleModel?,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<RoleModel>,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionModel>,
  ));
}

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleModelCopyWith<$Res>? get primaryRole {
    if (_self.primaryRole == null) {
    return null;
  }

  return $RoleModelCopyWith<$Res>(_self.primaryRole!, (value) {
    return _then(_self.copyWith(primaryRole: value));
  });
}
}

// dart format on
