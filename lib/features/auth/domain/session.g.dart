// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Session _$SessionFromJson(Map<String, dynamic> json) => _Session(
  userId: json['userId'] as String,
  displayName: json['displayName'] as String,
  email: json['email'] as String,
  outletId: json['outletId'] as String,
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
  accessTokenExpiresAt: DateTime.parse(json['accessTokenExpiresAt'] as String),
  isEmailVerified: json['isEmailVerified'] as bool,
  primaryRole: json['primaryRole'] == null
      ? null
      : RoleModel.fromJson(json['primaryRole'] as Map<String, dynamic>),
  roles:
      (json['roles'] as List<dynamic>?)
          ?.map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => PermissionModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$SessionToJson(_Session instance) => <String, dynamic>{
  'userId': instance.userId,
  'displayName': instance.displayName,
  'email': instance.email,
  'outletId': instance.outletId,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'accessTokenExpiresAt': instance.accessTokenExpiresAt.toIso8601String(),
  'isEmailVerified': instance.isEmailVerified,
  'primaryRole': instance.primaryRole,
  'roles': instance.roles,
  'permissions': instance.permissions,
};
