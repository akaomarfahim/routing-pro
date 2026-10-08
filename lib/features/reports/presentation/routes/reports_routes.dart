import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routing/guards/guards.dart';
import '../../../../config/routing/route_module.dart';
import '../../../../config/routing/route_spec.dart';
import '../../../../core/constants/permissions.dart';
import '../../../../core/widgets/feature_placeholder.dart';

const _canViewReports = CompositeGuard([
  AuthGuard(),
  PermissionGuard({Permissions.viewReports}),
]);

/// Reports. Hidden from cashiers by its nav destination, blocked by its guard -
/// the two agree on `report:read`, which is what keeps a tab from appearing
/// that the guard then bounces.
final class ReportsRoutes implements RouteModule {
  const ReportsRoutes();

  static const root = RouteSpec.root('/reports', name: 'reports', title: 'Reports', guard: _canViewReports);

  @override
  List<RouteSpec> get specs => const [root];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    root.route(builder: (context, state) => const FeaturePlaceholder(title: 'Reports')),
  ];
}
