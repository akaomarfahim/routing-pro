import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routing/guards/guards.dart';
import '../../../../config/routing/navigation/navigation_extensions.dart';
import '../../../../config/routing/route_module.dart';
import '../../../../config/routing/route_spec.dart';
import '../../../../core/constants/permissions.dart';
import '../../../../core/widgets/feature_placeholder.dart';

const _canViewSettings = CompositeGuard([
  AuthGuard(),
  PermissionGuard({Permissions.viewSettings}),
]);

/// ============================================================================
/// SETTINGS AND ITS SUB-PAGES.
///
/// Every child inherits `setting:read` from [list]; `staff` adds
/// `staff:update` on top. `profile` is deliberately left on the inherited
/// guard - it is where `EmailVerifiedGuard` sends people, so locking it behind
/// anything more would strand an unverified user.
/// ============================================================================
final class SettingsRoutes implements RouteModule {
  const SettingsRoutes();

  static const list = RouteSpec.root('/settings', name: 'settings', title: 'Settings', guard: _canViewSettings);

  static const profile = RouteSpec.child(list, 'profile', name: 'settingsProfile', title: 'Profile');

  static const staff = RouteSpec.child(
    list,
    'staff',
    name: 'settingsStaff',
    title: 'Staff',
    guard: PermissionGuard({Permissions.manageStaff}),
  );

  static const devices = RouteSpec.child(list, 'devices', name: 'settingsDevices', title: 'Devices');
  static const tax = RouteSpec.child(list, 'tax', name: 'settingsTax', title: 'Tax rules');
  static const printer = RouteSpec.child(list, 'printer', name: 'settingsPrinter', title: 'Printer');

  /// Rendered as the settings index, so adding a sub-page is one entry here.
  static const children = <RouteSpec>[profile, staff, devices, tax, printer];

  @override
  List<RouteSpec> get specs => const [list, ...children];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    list.route(
      builder: (context, state) => Scaffold(
        appBar: AppBar(title: Text(list.title)),
        body: ListView(
          children: [
            for (final child in children)
              ListTile(
                title: Text(child.title),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.goTo(child),
              ),
          ],
        ),
      ),
      routes: [
        for (final child in children) child.route(builder: (context, state) => FeaturePlaceholder(title: child.title)),
      ],
    ),
  ];
}
