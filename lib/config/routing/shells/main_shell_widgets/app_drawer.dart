import 'package:flutter/material.dart';

import '../../app_navigation.dart';
import '../../navigation/navigation_extensions.dart';

/// Optional drawer for the compact layout (enable it on the Scaffold in
/// `CompactLayoutBottomNavigation`). Reads the same filtered destination list
/// as the rail and the More screen.
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key, required this.items});

  final List<NavDestination> items;

  @override
  Widget build(BuildContext context) => Drawer(
    child: SafeArea(
      child: ListView(
        children: [
          for (final destination in items)
            ListTile(
              leading: Icon(destination.icon),
              title: Text(destination.label),
              selected: context.isWithin(destination.spec),
              onTap: () {
                Navigator.of(context).pop();
                context.goTo(destination.spec);
              },
            ),
        ],
      ),
    ),
  );
}
