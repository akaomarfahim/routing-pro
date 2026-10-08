import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routing/guards/guards.dart';
import '../../../../config/routing/route_module.dart';
import '../../../../config/routing/route_spec.dart';
import '../../../../config/routing/transitions/route_transitions.dart';
import '../../../../core/constants/permissions.dart';
import '../../../../core/widgets/feature_placeholder.dart';
import '../screens/transactions_screen.dart';

/// Signed in and allowed to see orders. Named once so each route below reads
/// as one line - an inline CompositeGuard per route is what makes a routes file
/// unreadable at thirty routes.
const _canViewOrders = CompositeGuard([
  AuthGuard(),
  PermissionGuard({Permissions.viewOrders}),
]);

/// ============================================================================
/// ORDERS - BRANCH 2.
///
/// The guard chain is the point of this file: `/orders/:orderId/refund` needs
/// `order:read` AND `order:refund` without either being restated, because
/// `accessGuard` composes a spec's guard with every ancestor's.
///
/// `orderId` is declared here, next to the path that uses it - a global
/// params file is how the god file grows back.
/// ============================================================================
final class OrdersRoutes implements RouteModule {
  const OrdersRoutes();

  /// Path parameter owned by this feature.
  static const orderId = 'orderId';

  static const list = RouteSpec.root('/orders', name: 'orders', title: 'Orders', guard: _canViewOrders);

  static const detail = RouteSpec.child(
    list,
    ':$orderId',
    name: 'orderDetail',
    title: 'Order',
    transition: TransitionPreset.slideFromRight,
  );

  /// Inherits `order:read` from [list]; adds `order:refund` on top. Opened on
  /// the root navigator because a refund is a committing action, not a tab.
  static const refund = RouteSpec.child(
    detail,
    'refund',
    name: 'orderRefund',
    title: 'Refund',
    guard: PermissionGuard({Permissions.issueRefund}),
    transition: TransitionPreset.slideFromBottom,
    fullscreen: true,
  );

  @override
  List<RouteSpec> get specs => const [list, detail, refund];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    list.route(
      builder: (context, state) => const TransactionsScreen(),
      routes: [
        detail.route(
          builder: (context, state) =>
              FeaturePlaceholder(title: 'Order', subtitle: 'Order ${state.requireParam(orderId)}'),
          routes: [
            refund.route(
              parentNavigatorKey: rootNavigatorKey,
              builder: (context, state) =>
                  FeaturePlaceholder(title: 'Refund', subtitle: 'Refunding order ${state.requireParam(orderId)}'),
            ),
          ],
        ),
      ],
    ),
  ];
}
