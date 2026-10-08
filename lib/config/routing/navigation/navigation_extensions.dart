import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../route_registry.dart';
import '../route_spec.dart';

/// The one fluent navigation API. Everything goes through [RouteSpec], so no
/// call site ever types a path string.
///
/// `go` versus `push`: use `go` for anything the browser back button should
/// treat as a page change, and `push` only for stacked flows (checkout, refund,
/// pickers, dashboard shortcuts) that the user backs out of. Deep `push` chains
/// on web create history entries nobody can reason about.
extension AppNavigation on BuildContext {
  void goTo(
    RouteSpec route, {
    Map<String, String> params = const {},
    Map<String, String?> query = const {},
    Object? extra,
  }) => go(route.withParamsAndQuery(params, query), extra: extra);

  Future<T?> pushTo<T extends Object?>(
    RouteSpec route, {
    Map<String, String> params = const {},
    Map<String, String?> query = const {},
    Object? extra,
  }) => push<T>(route.withParamsAndQuery(params, query), extra: extra);

  void replaceWith(
    RouteSpec route, {
    Map<String, String> params = const {},
    Map<String, String?> query = const {},
    Object? extra,
  }) => pushReplacement(route.withParamsAndQuery(params, query), extra: extra);

  /// Pops if there is something to pop, otherwise falls back to a route. Stops
  /// the dead back button you get on a deep-linked cold start.
  void popOr(RouteSpec fallback, {Map<String, String> params = const {}}) {
    if (canPop()) {
      pop();
    } else {
      goTo(fallback, params: params);
    }
  }

  /// The go_router name of the route on screen - the spec's `name`.
  String? get currentRouteName => GoRouterState.of(this).name;

  /// The spec on screen. Needs the registry because specs are no longer
  /// reachable through global statics: `ref.read(routeRegistryProvider)`.
  RouteSpec? currentSpec(RouteRegistry registry) {
    final state = GoRouterState.of(this);
    return registry.byPattern(state.fullPath) ?? registry.byLocation(state.matchedLocation);
  }

  bool isAt(RouteSpec route) => route.matches(GoRouterState.of(this).matchedLocation);

  /// True when [route] or any of its descendants is active - what a nav item
  /// should highlight on.
  bool isWithin(RouteSpec route) {
    final location = GoRouterState.of(this).matchedLocation;
    return route.matches(location) || location.startsWith('${route.path}/');
  }
}
