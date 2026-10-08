import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/application/auth_controller.dart';
import '../../features/auth/domain/auth_state.dart';

/// ================================================================================
/// Bridges Riverpod to `GoRouter.refreshListenable`.
/// It only notifies when the change could alter a routing decision.
///
/// It closes its subscription in [dispose]. A notifier that outlives the router
/// keeps the provider alive and fires into a disposed delegate.
///
/// Notifying on every emission re-runs the whole redirect chain and, on web,
/// causes visible URL churn.
/// ================================================================================
class RouterRefreshNotifier extends ChangeNotifier {
  RouterRefreshNotifier(Ref ref) {
    _subscription = ref.listen<AuthState>(authControllerProvider, (previous, next) {
      if (_affectsRouting(previous, next)) notifyListeners();
    });
  }

  late final ProviderSubscription<AuthState> _subscription;

  @visibleForTesting
  static bool affectsRouting(AuthState? previous, AuthState? next) => _affectsRouting(previous, next);

  static bool _affectsRouting(AuthState? previous, AuthState? next) {
    if (previous == null || next == null) return true;
    if (previous.runtimeType != next.runtimeType) return true;

    if (previous is Authenticated && next is Authenticated) {
      final a = previous.session;
      final b = next.session;
      // Permission keys, not the raw lists: a re-fetched session with the same
      // access must not re-run the redirect chain.
      return a.userId != b.userId ||
          a.outletId != b.outletId ||
          a.isEmailVerified != b.isEmailVerified ||
          !setEquals(a.permissionKeys, b.permissionKeys);
    }

    return false;
  }

  @override
  void dispose() {
    _subscription.close();
    super.dispose();
  }
}
