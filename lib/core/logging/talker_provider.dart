/// Riverpod access to the app-wide [Talker] logger.
library;

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'talker_provider.g.dart';

/// Provides the app-wide [Talker] instance to the provider graph.
///
/// A single [Talker] collects logs from the router, Dio, and Riverpod, so a
/// bug report reads as one timeline: tap → navigation → request → 500.
///
/// This provider has no default value. Create the instance in `main()` and
/// override it in the root [ProviderScope]:
///
/// ```dart
/// void main() {
///   final talker = TalkerFlutter.init();
///   runApp(
///     ProviderScope(
///       overrides: [talkerProvider.overrideWithValue(talker)],
///       observers: [TalkerRiverpodObserver(talker: talker)],
///       child: const App(),
///     ),
///   );
/// }
/// ```
///
/// Throws an [UnimplementedError] if read without the override.
///
/// See also:
///
///  * [TalkerRiverpodObserver], which logs provider lifecycle events.
@Riverpod(keepAlive: true)
Talker talker(Ref ref) => throw UnimplementedError(
  'talkerProvider was read without an override. '
  'Override it in the root ProviderScope in main().',
);
