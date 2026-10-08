import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/permissions.dart';
import '../application/auth_controller.dart';
import '../domain/permission_model.dart';
import '../domain/role_model.dart';
import '../domain/session.dart';
import '../domain/user_model.dart';

/// ================================================================================
/// THE ONE PLACE THAT ANSWERS "MAY THIS USER DO X?".
///
/// Roles and permissions come from the API, so everything here works on
/// `resource:action` strings rather than an enum - a new permission on the
/// server needs no app release.
///
/// The router asks the same question through the session's own helpers
/// ([Session.can] and friends); this service is the widget-facing form of it,
/// and both read the identical set of keys.
/// ================================================================================

class PermissionService {
  const PermissionService({this.roles = const [], this.directPermissions = const []});

  /// Built from the signed-in session - the usual case, and what the providers
  /// below use.
  factory PermissionService.fromSession(Session? session) => session == null
      ? const PermissionService()
      : PermissionService(roles: session.roles, directPermissions: session.permissions);

  /// Built from a fetched user - for staff screens where you are inspecting
  /// somebody else's access rather than your own.
  factory PermissionService.fromUser(UserModel? user) => user == null
      ? const PermissionService()
      : PermissionService(roles: user.roles, directPermissions: user.permissions);

  final List<RoleModel> roles;
  final List<PermissionModel> directPermissions;

  // ==========================================================================
  // PERMISSIONS
  // ==========================================================================

  /// Everything granted: permissions inherited from roles plus the ones granted
  /// to the user directly, as `resource:action` keys.
  Set<String> get allPermissions => {for (final role in roles) ...role.permissions.keys, ...directPermissions.keys};

  bool hasPermission(String resource, String action) => allPermissions.contains(Permissions.key(resource, action));

  bool hasPermissionKey(String key) => allPermissions.contains(key);

  bool hasAnyPermission(Iterable<String> permissionKeys) {
    final granted = allPermissions;
    return permissionKeys.any(granted.contains);
  }

  bool hasAllPermissions(Iterable<String> permissionKeys) {
    final granted = allPermissions;
    return permissionKeys.every(granted.contains);
  }

  /// Any action at all on a resource - the cheap "should this section exist"
  /// check.
  bool canAccessResource(String resource) => allPermissions.any((key) => key.startsWith('$resource:'));

  /// `['read', 'update']` for `order`, to drive an action menu.
  List<String> getResourceActions(String resource) => allPermissions
      .where((key) => key.startsWith('$resource:'))
      .map((key) => key.substring(resource.length + 1))
      .toList();

  // ==========================================================================
  // ROLES
  // ==========================================================================

  Set<String> get roleNames => {for (final role in roles) role.name};

  bool hasRole(String roleName) => roleNames.contains(roleName);

  bool hasAnyRole(Iterable<String> names) => names.any(roleNames.contains);

  bool hasAllRoles(Iterable<String> names) => names.every(roleNames.contains);

  // ==========================================================================
  // CRUD SHORTHANDS
  // ==========================================================================

  bool canCreate(String resource) => hasPermission(resource, Permissions.create);
  bool canRead(String resource) => hasPermission(resource, Permissions.read);
  bool canReadAll(String resource) => hasPermission(resource, Permissions.readAll);
  bool canUpdate(String resource) => hasPermission(resource, Permissions.update);
  bool canDelete(String resource) => hasPermission(resource, Permissions.delete);
}

// ============================================================================
// PROVIDERS
// ============================================================================

/// Follows the live session, so a role change mid-shift re-evaluates every
/// permission-aware widget on the next build.
final permissionServiceProvider = Provider<PermissionService>((ref) {
  final session = ref.watch(authControllerProvider.select((state) => state.sessionOrNull));
  return PermissionService.fromSession(session);
});

final hasPermissionProvider = Provider.family<bool, PermissionCheck>((ref, check) {
  final service = ref.watch(permissionServiceProvider);
  return service.hasPermission(check.resource, check.action);
});

final canAccessResourceProvider = Provider.family<bool, String>((ref, resource) {
  final service = ref.watch(permissionServiceProvider);
  return service.canAccessResource(resource);
});

final hasRoleProvider = Provider.family<bool, String>((ref, roleName) {
  final service = ref.watch(permissionServiceProvider);
  return service.hasRole(roleName);
});

/// A resource/action pair, so the family providers get a value-equal key.
class PermissionCheck {
  const PermissionCheck(this.resource, this.action);

  final String resource;
  final String action;

  String get key => Permissions.key(resource, action);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is PermissionCheck && resource == other.resource && action == other.action;

  @override
  int get hashCode => Object.hash(resource, action);

  @override
  String toString() => key;
}
