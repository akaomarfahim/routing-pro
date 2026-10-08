// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Tabs, drawer and landing rules. Immutable for the app's lifetime.
///
/// `keepAlive` matters: the shell's branch navigator keys live inside this
/// object, and recreating them would reset every tab's navigation stack.

@ProviderFor(appNavigation)
final appNavigationProvider = AppNavigationProvider._();

/// Tabs, drawer and landing rules. Immutable for the app's lifetime.
///
/// `keepAlive` matters: the shell's branch navigator keys live inside this
/// object, and recreating them would reset every tab's navigation stack.

final class AppNavigationProvider
    extends $FunctionalProvider<AppNavigation, AppNavigation, AppNavigation>
    with $Provider<AppNavigation> {
  /// Tabs, drawer and landing rules. Immutable for the app's lifetime.
  ///
  /// `keepAlive` matters: the shell's branch navigator keys live inside this
  /// object, and recreating them would reset every tab's navigation stack.
  AppNavigationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appNavigationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appNavigationHash();

  @$internal
  @override
  $ProviderElement<AppNavigation> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppNavigation create(Ref ref) {
    return appNavigation(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppNavigation value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppNavigation>(value),
    );
  }
}

String _$appNavigationHash() => r'5bce74db78a0c7a515b86c9c2709c036ebe2cba1';

/// Lookup + validation over every module's specs. Throws at startup on a
/// duplicate path/name or an orphaned child.

@ProviderFor(routeRegistry)
final routeRegistryProvider = RouteRegistryProvider._();

/// Lookup + validation over every module's specs. Throws at startup on a
/// duplicate path/name or an orphaned child.

final class RouteRegistryProvider
    extends $FunctionalProvider<RouteRegistry, RouteRegistry, RouteRegistry>
    with $Provider<RouteRegistry> {
  /// Lookup + validation over every module's specs. Throws at startup on a
  /// duplicate path/name or an orphaned child.
  RouteRegistryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routeRegistryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routeRegistryHash();

  @$internal
  @override
  $ProviderElement<RouteRegistry> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RouteRegistry create(Ref ref) {
    return routeRegistry(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RouteRegistry value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RouteRegistry>(value),
    );
  }
}

String _$routeRegistryHash() => r'e7d3bd65e2e7120c4a741c6b33ece49e205cb47b';

/// Validates and applies externally supplied links (notifications, QR codes,
/// custom schemes).

@ProviderFor(deepLinkHandler)
final deepLinkHandlerProvider = DeepLinkHandlerProvider._();

/// Validates and applies externally supplied links (notifications, QR codes,
/// custom schemes).

final class DeepLinkHandlerProvider
    extends
        $FunctionalProvider<DeepLinkHandler, DeepLinkHandler, DeepLinkHandler>
    with $Provider<DeepLinkHandler> {
  /// Validates and applies externally supplied links (notifications, QR codes,
  /// custom schemes).
  DeepLinkHandlerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deepLinkHandlerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deepLinkHandlerHash();

  @$internal
  @override
  $ProviderElement<DeepLinkHandler> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DeepLinkHandler create(Ref ref) {
    return deepLinkHandler(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeepLinkHandler value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeepLinkHandler>(value),
    );
  }
}

String _$deepLinkHandlerHash() => r'52ba5e7850cf06b11fe3b8c1607deb74c564720b';
