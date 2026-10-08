import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routing/guards/guards.dart';
import '../../../../config/routing/route_module.dart';
import '../../../../config/routing/route_spec.dart';
import '../../../../config/routing/transitions/route_transitions.dart';
import '../../../../core/widgets/feature_placeholder.dart';

/// ============================================================================
/// THE SALE-COMPLETION FLOW - DELIBERATELY OUTSIDE THE TAB SHELL.
///
/// No nav bar, no branch switching: full attention on taking money. Every page
/// renders on the root navigator, and `onExit` catches the browser back button
/// and the Android back gesture alike.
///
/// Registered in `AppModules.topLevel`, not as a branch.
/// ============================================================================
final class CheckoutRoutes implements RouteModule {
  const CheckoutRoutes();

  static const orderId = 'orderId';

  static const root = RouteSpec.root(
    '/checkout',
    name: 'checkout',
    title: 'Checkout',
    guard: Guards.selling,
    transition: TransitionPreset.slideFromBottom,
    fullscreen: true,
  );

  static const payment = RouteSpec.child(
    root,
    'payment',
    name: 'checkoutPayment',
    title: 'Payment',
    transition: TransitionPreset.slideFromRight,
    fullscreen: true,
  );

  static const receipt = RouteSpec.child(
    root,
    'receipt/:$orderId',
    name: 'checkoutReceipt',
    title: 'Receipt',
    transition: TransitionPreset.fade,
    fullscreen: true,
  );

  @override
  List<RouteSpec> get specs => const [root, payment, receipt];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    root.route(
      parentNavigatorKey: rootNavigatorKey,
      onExit: (context, state) => _confirmAbandon(context),
      builder: (context, state) => const FeaturePlaceholder(title: 'Checkout'),
      routes: [
        payment.route(
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => const FeaturePlaceholder(title: 'Payment'),
        ),
        receipt.route(
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) =>
              FeaturePlaceholder(title: 'Receipt', subtitle: 'Order ${state.requireParam(orderId)}'),
        ),
      ],
    ),
  ];

  /// Read the cart controller here and return true immediately when the cart is
  /// empty, so the prompt only appears when there is something to lose.
  static Future<bool> _confirmAbandon(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Leave checkout?'),
        content: const Text('The current sale will be held, not completed.'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text('Stay')),
          FilledButton(onPressed: () => Navigator.of(context).pop(true), child: const Text('Leave')),
        ],
      ),
    );
    return result ?? false;
  }
}
