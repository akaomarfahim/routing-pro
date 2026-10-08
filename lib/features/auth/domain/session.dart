import 'package:freezed_annotation/freezed_annotation.dart';

import 'permission_model.dart';
import 'role_model.dart';

part 'session.freezed.dart';
part 'session.g.dart';

/// ================================================================================
/// The signed-in user as the router sees them.
///
/// Roles and permissions arrive from the API, so nothing here is an enum: a new
/// permission on the server needs no app release. Everything is compared as a
/// `resource:action` key (see `Permissions`), which is the same form
/// `PermissionService` and the widget-level guards use.
/// ================================================================================

@freezed
abstract class Session with _$Session {
  const Session._();

  const factory Session({
    required String userId,
    required String displayName,
    required String email,
    required String outletId,
    required String accessToken,
    required String refreshToken,
    required DateTime accessTokenExpiresAt,
    required bool isEmailVerified,
    RoleModel? primaryRole,
    @Default([]) List<RoleModel> roles,
    @Default([]) List<PermissionModel> permissions,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);

  // ==========================================================================
  // PERMISSIONS
  // ==========================================================================

  /// Everything this session may do: permissions inherited from its roles plus
  /// any granted to the user directly, flattened to `resource:action`.
  Set<String> get permissionKeys => {for (final role in roles) ...role.permissions.keys, ...permissions.keys};

  Set<String> get roleNames => {for (final role in roles) role.name};

  bool can(String permission) => permissionKeys.contains(permission);

  /// Empty means "no requirement", so a route with no declared permission is
  /// open to any signed-in user.
  bool canAll(Iterable<String> required) {
    if (required.isEmpty) return true;
    final granted = permissionKeys;
    return required.every(granted.contains);
  }

  bool canAny(Iterable<String> required) {
    if (required.isEmpty) return true;
    final granted = permissionKeys;
    return required.any(granted.contains);
  }

  /// True when the session may do *anything* with a resource — the cheap check
  /// for "should this section exist at all".
  bool canAccess(String resource) => permissionKeys.any((key) => key.startsWith('$resource:'));

  // ==========================================================================
  // ROLES
  // ==========================================================================

  bool hasRole(String name) => roleNames.contains(name);

  bool hasAnyRole(Iterable<String> names) => names.any(roleNames.contains);

  bool hasAllRoles(Iterable<String> names) => names.every(roleNames.contains);

  /// Highest `hierarchy` wins, falling back to the role the API marked primary.
  RoleModel? get effectiveRole {
    if (primaryRole != null) return primaryRole;
    if (roles.isEmpty) return null;
    return roles.reduce((a, b) => b.hierarchy > a.hierarchy ? b : a);
  }

  // ==========================================================================
  // TOKEN
  // ==========================================================================

  bool get isAccessTokenExpired => DateTime.now().toUtc().isAfter(accessTokenExpiresAt.toUtc());
}
