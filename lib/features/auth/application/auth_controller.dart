import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/session_store.dart';
import '../domain/auth_state.dart';
import '../domain/session.dart';

part 'auth_controller.g.dart';

/// The only writer of [AuthState]. Screens call these methods and then do
/// nothing else - the router reacts on its own. Never navigate imperatively
/// after an auth action or two navigations will race.
@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  AuthState build() {
    // Fire-and-forget restore. State starts at `unknown`, the splash route
    // holds the user there, and the router moves when this resolves.
    Future.microtask(_restore);
    return const AuthState.unknown();
  }

  SessionStore get _store => ref.read(sessionStoreProvider);

  Future<void> _restore() async {
    final session = await _store.read();

    if (session == null) {
      state = const AuthState.unauthenticated();
      return;
    }

    if (session.isAccessTokenExpired) {
      // Hook your Dio refresh interceptor here; on failure fall through.
      await _store.clear();
      state = const AuthState.unauthenticated(reason: 'session_expired');
      return;
    }

    state = AuthState.authenticated(session: session);
  }

  Future<void> signIn(Session session) async {
    await _store.write(session);
    state = AuthState.authenticated(session: session);
  }

  Future<void> signOut({String? reason}) async {
    await _store.clear();
    state = AuthState.unauthenticated(reason: reason);
  }

  /// Idle timeout / shift handover: keeps the session, gates the UI.
  void lock() {
    final session = state.sessionOrNull;
    if (session != null) state = AuthState.locked(session: session);
  }

  void unlock() {
    if (state case SessionLocked(:final session)) {
      state = AuthState.authenticated(session: session);
    }
  }

  // Future<void> openShift(RegisterShift shift) async {
  //   if (state case Authenticated(:final session)) {
  //     final updated = session.copyWith(shift: shift);
  //     await _store.write(updated);
  //     state = AuthState.authenticated(session: updated);
  //   }
  // }

  // Future<void> closeShift() async {
  //   if (state case Authenticated(:final session)) {
  //     final updated = session.copyWith(shift: null);
  //     await _store.write(updated);
  //     state = AuthState.authenticated(session: updated);
  //   }
  // }
}
