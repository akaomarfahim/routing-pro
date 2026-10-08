import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/application/auth_controller.dart';
import '../routing_providers.dart';
import 'main_shell_widgets/breakpoints.dart';
import 'main_shell_widgets/compact_layout_bottom_navigation.dart';
import 'main_shell_widgets/rail_layout_bottom_navigation.dart';

/// ================================================================================
/// THE ADAPTIVE APPLICATION SHELL.
///
/// Destinations come from `AppNavigation`, filtered by the session's
/// permissions, so a tab can never appear for a user the guard would then
/// bounce. Nothing here hard-codes a tab list.
/// ================================================================================
class MainShell extends ConsumerWidget {
  const MainShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  static const _functionKeys = <LogicalKeyboardKey>[
    LogicalKeyboardKey.f1,
    LogicalKeyboardKey.f2,
    LogicalKeyboardKey.f3,
    LogicalKeyboardKey.f4,
    LogicalKeyboardKey.f5,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(appNavigationProvider);
    final session = ref.watch(authControllerProvider.select((state) => state.sessionOrNull));

    // The redirect policy guarantees a session here; this covers the single
    // frame during sign-out.
    if (session == null) return const SizedBox.shrink();

    final destinations = navigation.visibleTabs(session);
    if (destinations.isEmpty) return const SizedBox.shrink();

    // The active branch mapped back to a visible tab position. When the branch
    // on screen has no tab this session may see, highlight the first rather
    // than the wrong one.
    final activeTab = navigation.tabForBranch(navigationShell.currentIndex);
    final matched = activeTab == null ? -1 : destinations.indexOf(activeTab);
    final selectedIndex = matched < 0 ? 0 : matched;

    void onSelect(int visibleIndex) {
      // Visible position -> branch index. They differ whenever permissions
      // have hidden a tab, which is why this goes through `branchOf` rather
      // than passing `visibleIndex` straight to `goBranch`.
      final branch = navigation.branchOf(destinations[visibleIndex]);
      if (branch < 0) return;
      // Tapping the active tab returns to that branch's root - the "back to the
      // list" behavior cashiers expect.
      navigationShell.goBranch(branch, initialLocation: branch == navigationShell.currentIndex);
    }

    final width = MediaQuery.sizeOf(context).width;

    final Widget layout = width < Breakpoints.compact
        ? CompactLayoutBottomNavigation(
            shell: navigationShell,
            destinations: destinations,
            currentIndex: selectedIndex,
            onSelect: onSelect,
          )
        : RailLayoutBottomNavigation(
            shell: navigationShell,
            destinations: destinations,
            drawerItems: navigation.visibleDrawer(session),
            selectedIndex: selectedIndex,
            onSelect: onSelect,
            extended: width >= Breakpoints.medium,
          );

    // Hardware keyboards are the norm at a counter and on web.
    return CallbackShortcuts(
      bindings: <ShortcutActivator, VoidCallback>{
        for (var i = 0; i < destinations.length && i < _functionKeys.length; i++)
          SingleActivator(_functionKeys[i]): () => onSelect(i),
        const SingleActivator(LogicalKeyboardKey.keyL, control: true): ref.read(authControllerProvider.notifier).lock,
      },
      child: Focus(autofocus: true, child: layout),
    );
  }
}
