import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../guards/guards.dart';
import '../route_module.dart';
import '../route_spec.dart';
import '../screens/more_screen.dart';

/// ============================================================================
/// THE "MORE" TAB: ONE NAVIGATOR HOSTING SEVERAL INDEPENDENT FEATURES.
///
/// Customers, reports and settings each own their routes. This module only
/// composes them under one tab so they share a back stack while URLs stay clean
/// (`/settings`, not `/more/settings`). It lives in `config` because the More
/// screen is navigation chrome - it reads the app's destination list.
/// ============================================================================
final class MoreModule implements RouteModule {
  const MoreModule();

  static const root = RouteSpec.root('/more', name: 'more', title: 'More', guard: Guards.auth);

  static const _features = <RouteModule>[]; // CustomersRoutes(), ReportsRoutes(), SettingsRoutes()

  @override
  List<RouteSpec> get specs => [root, for (final feature in _features) ...feature.specs];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    root.route(builder: (context, state) => const MoreScreen()),
    for (final feature in _features) ...feature.routes(rootNavigatorKey),
  ];
}
