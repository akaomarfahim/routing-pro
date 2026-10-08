// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The only writer of [AuthState]. Screens call these methods and then do
/// nothing else - the router reacts on its own. Never navigate imperatively
/// after an auth action or two navigations will race.

@ProviderFor(AuthController)
final authControllerProvider = AuthControllerProvider._();

/// The only writer of [AuthState]. Screens call these methods and then do
/// nothing else - the router reacts on its own. Never navigate imperatively
/// after an auth action or two navigations will race.
final class AuthControllerProvider
    extends $NotifierProvider<AuthController, AuthState> {
  /// The only writer of [AuthState]. Screens call these methods and then do
  /// nothing else - the router reacts on its own. Never navigate imperatively
  /// after an auth action or two navigations will race.
  AuthControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authControllerHash();

  @$internal
  @override
  AuthController create() => AuthController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthState>(value),
    );
  }
}

String _$authControllerHash() => r'edde0009f34af1e43937c09d713ff2048251ee37';

/// The only writer of [AuthState]. Screens call these methods and then do
/// nothing else - the router reacts on its own. Never navigate imperatively
/// after an auth action or two navigations will race.

abstract class _$AuthController extends $Notifier<AuthState> {
  AuthState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AuthState, AuthState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthState, AuthState>,
              AuthState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
