import 'package:freezed_annotation/freezed_annotation.dart';

import 'permission_model.dart';

part 'role_model.freezed.dart';
part 'role_model.g.dart';

@freezed
abstract class RoleModel with _$RoleModel {
  factory RoleModel({
    required String id,
    required String name,
    String? displayName,
    String? description,
    @Default(false) bool isSystemRole,
    @Default(0) int hierarchy,
    @Default(false) bool isActive,
    @Default([]) List<PermissionModel> permissions,
    @Default(false) isPrimary,
  }) = _RoleModel;

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);
}

extension RoleModelX on RoleModel {
  /// Every permission this role grants, as `resource:action` keys.
  Set<String> get permissionKeys => permissions.keys;
}
