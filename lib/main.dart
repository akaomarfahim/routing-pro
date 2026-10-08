import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

import 'core/logging/talker_provider.dart';
import 'features/app.dart';

/// ============================================================================
/// APP ENTRY POINT.
///
/// Three jobs, in this order: start observability, open local storage, hand a
/// configured ProviderScope to [App]. Nothing about routing happens here - the
/// router is built lazily by `routerProvider` the first time `App` reads it,
/// and the redirect policy decides the first screen.
/// ============================================================================
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ==========================================================================
  // 1. OBSERVABILITY - FIRST, SO STARTUP FAILURES ARE CAPTURED TOO
  // ==========================================================================
  final talker = TalkerFlutter.init();

  // Framework errors (build / layout / paint) and anything that escapes an
  // async gap join the same stream as the route and provider logs, so a bug
  // report reads: tapped -> navigated -> request -> threw.
  FlutterError.onError = (details) => talker.handle(details.exception, details.stack, 'FlutterError');
  PlatformDispatcher.instance.onError = (error, stack) {
    talker.handle(error, stack, 'PlatformDispatcher');
    return true; // handled: do not kill the isolate at a till mid-sale
  };

  // ==========================================================================
  // 2. LOCAL STORAGE
  // ==========================================================================
  await Hive.initFlutter();
  // Hive.registerAdapters();                                    // Hive CE generated
  // final settingsBox = await Hive.openBox<AppSettings>('app_settings_box');

  // Web only: drop the '#' so /orders/42 is a real path and a refresh works.
  // Needs `import 'package:flutter_web_plugins/url_strategy.dart';`
  // if (kIsWeb) usePathUrlStrategy();

  // ==========================================================================
  // 3. BOOT
  // ==========================================================================
  runApp(
    ProviderScope(
      overrides: [
        // The one provider that MUST be overridden. `talkerProvider` throws by
        // design, so a missing override fails loudly at startup instead of
        // quietly giving half the app a second Talker instance.
        talkerProvider.overrideWithValue(talker),
        // appSettingsBoxProvider.overrideWithValue(settingsBox),
      ],
      // Logs every provider add / update / dispose and every provider error.
      observers: [TalkerRiverpodObserver(talker: talker)],
      child: const App(),
    ),
  );
}
