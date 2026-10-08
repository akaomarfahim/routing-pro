import '../../../core/constants/permissions.dart';
import '../domain/permission_model.dart';
import '../domain/role_model.dart';
import '../domain/session.dart';

/// ============================================================================
/// SESSIONS WITHOUT A BACKEND.
///
/// `AuthController.signIn` takes a ready-made [Session], because minting one is
/// the API's job: POST /login returns the user, their roles and their
/// permissions, and the client just stores it. Until that endpoint exists, this
/// file stands in for it.
///
/// It is also the fastest way to SEE the routing layer work: sign in as each
/// role and watch the tab bar, the drawer and the guards change with nothing
/// else in the app being touched.
///
/// DELETE THIS FILE once the real auth repository lands.
/// ============================================================================

enum DemoRole {
  /// Everything. The owner standing behind the counter.
  owner('owner', 'Aisha Rahman', {
    Permissions.viewDashboard,
    Permissions.operateTerminal,
    Permissions.openShift,
    Permissions.viewOrders,
    Permissions.createOrder,
    Permissions.issueRefund,
    Permissions.viewProducts,
    Permissions.createProduct,
    Permissions.updateProduct,
    Permissions.viewCustomers,
    Permissions.updateCustomer,
    Permissions.viewReports,
    Permissions.exportReports,
    Permissions.viewSettings,
    Permissions.manageSettings,
    Permissions.manageStaff,
  }),

  /// Runs the shop day to day: can refund, cannot manage staff or settings.
  manager('manager', 'Tariq Islam', {
    Permissions.viewDashboard,
    Permissions.operateTerminal,
    Permissions.openShift,
    Permissions.viewOrders,
    Permissions.createOrder,
    Permissions.issueRefund,
    Permissions.viewProducts,
    Permissions.createProduct,
    Permissions.updateProduct,
    Permissions.viewCustomers,
    Permissions.viewReports,
  }),

  /// Sells, and nothing else. Sign in as this one to watch the Products,
  /// Reports and Settings destinations disappear and `/reports` bounce to
  /// `/forbidden` - the nav bar and the guards reading the same permissions.
  cashier('salesman', 'Nadia Chowdhury', {
    Permissions.operateTerminal,
    Permissions.viewOrders,
    Permissions.createOrder,
    Permissions.viewCustomers,
  });

  const DemoRole(this.roleName, this.displayName, this.permissionKeys);

  final String roleName;
  final String displayName;
  final Set<String> permissionKeys;

  String get label => switch (this) {
    DemoRole.owner => 'Owner',
    DemoRole.manager => 'Manager',
    DemoRole.cashier => 'Cashier',
  };

  /// Builds the session the API would have returned.
  ///
  /// Permissions arrive as `resource` + `action` pairs, so the `resource:action`
  /// keys above are split back apart here - that is the shape
  /// `PermissionModel.key` and `Session.permissionKeys` compare.
  Session session({String? email}) {
    final permissions = [
      for (final key in permissionKeys)
        PermissionModel(
          id: key,
          name: key,
          resource: key.split(':').first,
          action: key.split(':').skip(1).join(':'),
          isActive: true,
        ),
    ];

    return Session(
      userId: 'demo-$roleName',
      displayName: displayName,
      email: email == null || email.isEmpty ? '$roleName@demo.pos' : email,
      outletId: 'outlet-1',
      // Obviously not real tokens. A real sign-in stores what the API issued.
      accessToken: 'demo-access-$roleName',
      refreshToken: 'demo-refresh-$roleName',
      // Short enough to exercise AuthGuard's expiry branch if you want to:
      // drop this to a past DateTime and the router bounces you to /login.
      accessTokenExpiresAt: DateTime.now().toUtc().add(const Duration(hours: 8)),
      isEmailVerified: true,
      primaryRole: _role(permissions),
      roles: [_role(permissions)],
    );
  }

  RoleModel _role(List<PermissionModel> permissions) => RoleModel(
    id: roleName,
    name: roleName,
    displayName: label,
    hierarchy: index,
    isActive: true,
    isPrimary: true,
    permissions: permissions,
  );
}
