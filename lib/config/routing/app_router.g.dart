// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Built exactly once for the app's lifetime. A new GoRouter resets the stack
/// and, on web, the URL - so this reads, never watches, and reacts to auth
/// changes through `refreshListenable`.
///
/// Deliberately thin: routes come from feature modules, access rules from the
/// guards on each spec, the decision from the pure [RedirectPolicy]. This file
/// does not grow as the app does.

@ProviderFor(router)
final routerProvider = RouterProvider._();

/// Built exactly once for the app's lifetime. A new GoRouter resets the stack
/// and, on web, the URL - so this reads, never watches, and reacts to auth
/// changes through `refreshListenable`.
///
/// Deliberately thin: routes come from feature modules, access rules from the
/// guards on each spec, the decision from the pure [RedirectPolicy]. This file
/// does not grow as the app does.

final class RouterProvider
    extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  /// Built exactly once for the app's lifetime. A new GoRouter resets the stack
  /// and, on web, the URL - so this reads, never watches, and reacts to auth
  /// changes through `refreshListenable`.
  ///
  /// Deliberately thin: routes come from feature modules, access rules from the
  /// guards on each spec, the decision from the pure [RedirectPolicy]. This file
  /// does not grow as the app does.
  RouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routerHash();

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    return router(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }
}

String _$routerHash() => r'6472b5af567b88518540afe8058aac4c45fef7eb';
