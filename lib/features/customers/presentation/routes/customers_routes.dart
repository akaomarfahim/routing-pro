import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routing/guards/guards.dart';
import '../../../../config/routing/route_module.dart';
import '../../../../config/routing/route_spec.dart';
import '../../../../config/routing/transitions/route_transitions.dart';
import '../../../../core/constants/permissions.dart';
import '../../../../core/widgets/feature_placeholder.dart';

const _canViewCustomers = CompositeGuard([
  AuthGuard(),
  PermissionGuard({Permissions.viewCustomers}),
]);

/// Customers. Lives in the More tab's navigator but keeps a top-level URL.
final class CustomersRoutes implements RouteModule {
  const CustomersRoutes();

  static const customerId = 'customerId';

  static const list = RouteSpec.root('/customers', name: 'customers', title: 'Customers', guard: _canViewCustomers);

  static const detail = RouteSpec.child(
    list,
    ':$customerId',
    name: 'customerDetail',
    title: 'Customer',
    transition: TransitionPreset.slideFromRight,
  );

  @override
  List<RouteSpec> get specs => const [list, detail];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    list.route(
      builder: (context, state) => const FeaturePlaceholder(title: 'Customers'),
      routes: [
        detail.route(
          builder: (context, state) => FeaturePlaceholder(title: 'Customer', subtitle: state.requireParam(customerId)),
        ),
      ],
    ),
  ];
}
