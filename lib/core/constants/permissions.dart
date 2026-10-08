library;

/// ================================================================================
/// PERMISSION KEYS.
///
/// The API sends permissions as `resource` + `action` pairs; everything in the
/// app compares them as a single `resource:action` string. `PermissionModel.key`
/// builds that string, [Session.permissionKeys] flattens a session down to a set
/// of them, and `PermissionService` answers questions about them.
///
/// Route guards, widget guards and the nav bar all reference the constants
/// below, so a backend rename is a one-line change here rather than a hunt for
/// string literals.
/// ================================================================================

abstract final class Permissions {
  const Permissions._();

  // ---------------------------------------------------------------- resources
  static const dashboard = 'dashboard';
  static const terminal = 'terminal';
  static const shift = 'shift';
  static const order = 'order';
  static const product = 'product';
  static const customer = 'customer';
  static const report = 'report';
  static const setting = 'setting';
  static const staff = 'staff';

  // ------------------------------------------------------------------ actions
  static const read = 'read';
  static const readAll = 'read:all';
  static const create = 'create';
  static const update = 'update';
  static const delete = 'delete';
  static const operate = 'operate';
  static const refund = 'refund';
  static const exportAction = 'export';

  /// `Permissions.key(Permissions.order, Permissions.read)` -> `order:read`.
  /// Use this when the resource or action is only known at runtime.
  static String key(String resource, String action) => '$resource:$action';

  // ------------------------------------------------------------- routing keys
  // The subset the router and the nav bar reference by name.
  static const viewDashboard = '$dashboard:$read';
  static const operateTerminal = 'terminal:operate';
  static const openShift = 'shift:create';

  static const viewOrders = 'order:read';
  static const createOrder = 'order:create';
  static const issueRefund = 'order:refund';

  static const viewProducts = 'product:read';
  static const createProduct = 'product:create';
  static const updateProduct = 'product:update';

  static const viewCustomers = 'customer:read';
  static const updateCustomer = 'customer:update';

  static const viewReports = 'report:read';
  static const exportReports = 'report:export';

  static const viewSettings = 'setting:read';
  static const manageSettings = 'setting:update';
  static const manageStaff = 'staff:update';
}

/// Role names, as the API spells them. Prefer guarding on a permission; reach
/// for a role only when the rule is genuinely about who someone is (billing
/// owner, impersonation, audit trail).
abstract final class Roles {
  const Roles._();

  static const superAdmin = 'super_admin';
  static const admin = 'admin';
  static const manager = 'manager';
  static const salesman = 'salesman';
}
