import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routing/guards/guards.dart';
import '../../../../config/routing/route_module.dart';
import '../../../../config/routing/route_spec.dart';
import '../../../../config/routing/transitions/route_transitions.dart';
import '../../../../core/widgets/feature_placeholder.dart';

/// ============================================================================
/// THE TILL - BRANCH 1.
///
/// `Guards.selling` = signed in + `terminal:operate` + an open shift. The tab
/// itself stays visible to a cashier with no shift open (its destination asks
/// only for `terminal:operate`), so the shift gate stops them at the door
/// rather than hiding the door.
///
/// Cart and held sales inherit that whole chain through `accessGuard`.
/// ============================================================================
final class TerminalRoutes implements RouteModule {
  const TerminalRoutes();

  static const root = RouteSpec.root('/terminal', name: 'terminal', title: 'Terminal', guard: Guards.selling);

  static const cart = RouteSpec.child(
    root,
    'cart',
    name: 'cart',
    title: 'Cart',
    transition: TransitionPreset.slideFromRight,
  );

  static const heldSales = RouteSpec.child(
    root,
    'held',
    name: 'heldSales',
    title: 'Held sales',
    transition: TransitionPreset.slideFromRight,
  );

  @override
  List<RouteSpec> get specs => const [root, cart, heldSales];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    root.route(
      builder: (context, state) => const FeaturePlaceholder(
        title: 'Terminal',
        subtitle: 'Scan, search and build a sale here.',
        showAppBar: false,
      ),
      routes: [
        cart.route(builder: (context, state) => const FeaturePlaceholder(title: 'Cart')),
        heldSales.route(builder: (context, state) => const FeaturePlaceholder(title: 'Held sales')),
      ],
    ),
  ];
}
