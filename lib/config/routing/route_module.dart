import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'route_spec.dart';

/// THE CONTRACT BETWEEN A FEATURE AND THE ROUTER.
///
/// Each feature exposes one module. It owns its [RouteSpec]s and knows how to
/// turn them into `GoRoute`s. The composition root lists modules; it never
/// reaches inside them. Adding a feature = one new module + one line in the
/// composition root. Nothing else in the app changes.
///
/// Dependency rule: features import `core/routing`; `core/routing` never
/// imports a feature; only `config/routing` imports every feature.
abstract interface class RouteModule {
  /// Every spec this module owns, parents included. Feeds the registry's
  /// lookup tables and its duplicate/orphan validation.
  List<RouteSpec> get specs;

  /// The route tree. [rootNavigatorKey] is for routes that must cover the
  /// shell chrome (`parentNavigatorKey`).
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey);
}
