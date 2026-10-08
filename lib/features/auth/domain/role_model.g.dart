// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoleModel _$RoleModelFromJson(Map<String, dynamic> json) => _RoleModel(
  id: json['id'] as String,
  name: json['name'] as String,
  displayName: json['displayName'] as String?,
  description: json['description'] as String?,
  isSystemRole: json['isSystemRole'] as bool? ?? false,
  hierarchy: (json['hierarchy'] as num?)?.toInt() ?? 0,
  isActive: json['isActive'] as bool? ?? false,
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => PermissionModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isPrimary: json['isPrimary'] ?? false,
);

Map<String, dynamic> _$RoleModelToJson(_RoleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'displayName': instance.displayName,
      'description': instance.description,
      'isSystemRole': instance.isSystemRole,
      'hierarchy': instance.hierarchy,
      'isActive': instance.isActive,
      'permissions': instance.permissions,
      'isPrimary': instance.isPrimary,
    };
