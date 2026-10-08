import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../features/auth/application/auth_controller.dart';
import '../navigation/navigation_extensions.dart';
import '../routing_providers.dart';

/// The overflow tab: every drawer destination the session may see that is not
/// already a tab. Same list, same permission filter as the rail and drawer.
class MoreScreen extends ConsumerWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(appNavigationProvider);
    final session = ref.watch(authControllerProvider.select((state) => state.sessionOrNull));
    if (session == null) return const SizedBox.shrink();

    final tabs = navigation.tabs;
    final items = navigation.visibleDrawer(session).where((d) => !tabs.contains(d)).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('More')),
      body: ListView(
        children: [
          for (final destination in items)
            ListTile(
              leading: Icon(destination.icon),
              title: Text(destination.label),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.goTo(destination.spec),
            ),
        ],
      ),
    );
  }
}
