// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PermissionModel _$PermissionModelFromJson(Map<String, dynamic> json) =>
    _PermissionModel(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      resource: json['resource'] as String? ?? '',
      isActive: json['isActive'] as bool? ?? false,
      action: json['action'] as String? ?? '',
    );

Map<String, dynamic> _$PermissionModelToJson(_PermissionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'resource': instance.resource,
      'isActive': instance.isActive,
      'action': instance.action,
    };
