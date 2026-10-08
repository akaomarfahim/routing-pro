import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'talker_provider.g.dart';

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
@Riverpod(keepAlive: true)
Talker talker(Ref ref) =>
    throw UnimplementedError('talkerProvider must be overridden in ProviderScope - see the doc comment above.');
