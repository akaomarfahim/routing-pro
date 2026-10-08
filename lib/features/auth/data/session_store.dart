import 'dart:convert';

import 'package:flutter_secure_storage_plus/flutter_secure_storage_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/session.dart';

part 'session_store.g.dart';

abstract interface class SessionStore {
  Future<Session?> read();
  Future<void> write(Session session);
  Future<void> clear();
}

/// Native implementation. On web, prefer a backend-issued HttpOnly cookie for
/// the refresh token and keep only non-sensitive metadata here - swap in a
/// different implementation behind this interface and the router never notices.
class SecureSessionStore implements SessionStore {
  const SecureSessionStore(this._storage);

  static const _key = 'pos.session.v1';

  final FlutterSecureStoragePlus _storage;

  @override
  Future<Session?> read() async {
    final raw = await _storage.read(key: _key);
    if (raw == null || raw.isEmpty) return null;
    try {
      return Session.fromJson(jsonDecode(raw) as Map<String, dynamic>);
    } catch (_) {
      // Schema drift after an app update: drop it rather than crash on boot.
      await clear();
      return null;
    }
  }

  @override
  Future<void> write(Session session) => _storage.write(key: _key, value: jsonEncode(session.toJson()));

  @override
  Future<void> clear() => _storage.delete(key: _key);
}

/// In-memory store for widget tests and the demo sign-in screen.
class InMemorySessionStore implements SessionStore {
  Session? _session;

  @override
  Future<Session?> read() async => _session;

  @override
  Future<void> write(Session session) async => _session = session;

  @override
  Future<void> clear() async => _session = null;
}

@Riverpod(keepAlive: true)
SessionStore sessionStore(Ref ref) => SecureSessionStore(FlutterSecureStoragePlus());
