import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routing/guards/guards.dart';
import '../../../../config/routing/route_module.dart';
import '../../../../config/routing/route_spec.dart';
import '../dashboard_screen.dart';

/// ============================================================================
/// DASHBOARD - BRANCH 0.
///
/// Guarded by `auth` only, matching its nav destination, which declares no
/// permissions: a visible tab the guard would bounce is the bug this pairing
/// prevents.
/// ============================================================================
final class DashboardRoutes implements RouteModule {
  const DashboardRoutes();

  static const root = RouteSpec.root('/dashboard', name: 'dashboard', title: 'Dashboard', guard: Guards.auth);

  @override
  List<RouteSpec> get specs => const [root];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    root.route(builder: (context, state) => const DashboardScreen()),
  ];
}
