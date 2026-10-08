import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app_navigation.dart';
import '../../navigation/navigation_extensions.dart';

/// Tablet / desktop / web layout: a navigation rail, extended when there is room.
class RailLayoutBottomNavigation extends StatelessWidget {
  const RailLayoutBottomNavigation({
    super.key,
    required this.shell,
    required this.destinations,
    required this.drawerItems,
    required this.selectedIndex,
    required this.onSelect,
    required this.extended,
  });

  final StatefulNavigationShell shell;
  final List<NavDestination> destinations;
  final List<NavDestination> drawerItems;
  final int selectedIndex;
  final ValueChanged<int> onSelect;
  final bool extended;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Row(
      children: [
        NavigationRail(
          extended: extended,
          minExtendedWidth: 208,
          labelType: extended ? NavigationRailLabelType.none : NavigationRailLabelType.all,
          selectedIndex: selectedIndex,
          onDestinationSelected: onSelect,
          leading: const Padding(padding: EdgeInsets.symmetric(vertical: 16), child: Icon(Icons.storefront, size: 28)),
          trailing: extended && drawerItems.isNotEmpty ? _RailOverflow(items: drawerItems) : null,
          destinations: [
            for (final destination in destinations)
              NavigationRailDestination(
                icon: Icon(destination.icon),
                selectedIcon: Icon(destination.activeIcon),
                label: Text(destination.label),
              ),
          ],
        ),
        const VerticalDivider(width: 1, thickness: 1),
        Expanded(child: shell),
      ],
    ),
  );
}

class _RailOverflow extends StatelessWidget {
  const _RailOverflow({required this.items});

  final List<NavDestination> items;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      const Divider(),
      for (final destination in items)
        ListTile(
          dense: true,
          leading: Icon(destination.icon),
          title: Text(destination.label),
          selected: context.isWithin(destination.spec),
          onTap: () => context.goTo(destination.spec),
        ),
    ],
  );
}
