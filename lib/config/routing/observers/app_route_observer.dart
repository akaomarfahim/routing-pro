import 'package:flutter/widgets.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../route_registry.dart';

/// ================================================================================
/// Route breadcrumbs in the same Talker stream as your Dio and Riverpod logs,
/// so a bug report reads: tapped -> navigated -> request -> 500.
///
/// Also the one place to emit screen-view analytics, keyed off the spec's
/// `analyticsId` rather than a raw URL containing customer ids.
///
/// Attach it to the root navigator AND to each shell branch: a navigator only
/// reports its own stack.
/// ================================================================================
class AppRouteObserver extends NavigatorObserver {
  AppRouteObserver(this._talker, {required this.registry, this.onScreenView});

  final Talker _talker;
  final RouteRegistry registry;
  final void Function(String screenName)? onScreenView;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _record('push', route, previousRoute, isEntry: true);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    _record('pop', route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _record('replace', newRoute, oldRoute, isEntry: true);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    _record('remove', route, previousRoute);
  }

  void _record(String action, Route<dynamic>? route, Route<dynamic>? previous, {bool isEntry = false}) {
    final name = route?.settings.name;
    if (name == null) return;

    final from = previous?.settings.name ?? '-';
    _talker.logCustom(TalkerLog('[route] $action $name (from $from)'));

    if (!isEntry || onScreenView == null) return;
    final spec = registry.byName(name) ?? registry.byLocation(name);
    if (spec != null) onScreenView!(spec.analyticsId);
  }
}
