// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talker_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ============================================================================
/// GLOBAL DEPENDENCY INJECTION TOKEN FOR THE [Talker] OBSERVABILITY SUITE.
///
/// Instantiate Talker in `main()` and inject it through `ProviderScope`, so the
/// router, Dio and Riverpod all log into one stream and a bug report reads:
/// tapped -> navigated -> request -> 500.
///
///   final talker = TalkerFlutter.init();
///   ProviderScope(
///     overrides: [talkerProvider.overrideWithValue(talker)],
///     observers: [TalkerRiverpodObserver(talker: talker)],
///     child: const App(),
///   );
/// ============================================================================

@ProviderFor(talker)
final talkerProvider = TalkerProvider._();

/// ============================================================================
/// GLOBAL DEPENDENCY INJECTION TOKEN FOR THE [Talker] OBSERVABILITY SUITE.
///
/// Instantiate Talker in `main()` and inject it through `ProviderScope`, so the
/// router, Dio and Riverpod all log into one stream and a bug report reads:
/// tapped -> navigated -> request -> 500.
///
///   final talker = TalkerFlutter.init();
///   ProviderScope(
///     overrides: [talkerProvider.overrideWithValue(talker)],
///     observers: [TalkerRiverpodObserver(talker: talker)],
///     child: const App(),
///   );
/// ============================================================================

final class TalkerProvider extends $FunctionalProvider<Talker, Talker, Talker>
    with $Provider<Talker> {
  /// ============================================================================
  /// GLOBAL DEPENDENCY INJECTION TOKEN FOR THE [Talker] OBSERVABILITY SUITE.
  ///
  /// Instantiate Talker in `main()` and inject it through `ProviderScope`, so the
  /// router, Dio and Riverpod all log into one stream and a bug report reads:
  /// tapped -> navigated -> request -> 500.
  ///
  ///   final talker = TalkerFlutter.init();
  ///   ProviderScope(
  ///     overrides: [talkerProvider.overrideWithValue(talker)],
  ///     observers: [TalkerRiverpodObserver(talker: talker)],
  ///     child: const App(),
  ///   );
  /// ============================================================================
  TalkerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'talkerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$talkerHash();

  @$internal
  @override
  $ProviderElement<Talker> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Talker create(Ref ref) {
    return talker(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Talker value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Talker>(value),
    );
  }
}

String _$talkerHash() => r'eb907893f3db16c4d47a7a0d56845e6dc465bd78';
