import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app_navigation.dart';
import 'glossy_button.dart';

/// Phone layout: a floating glass tab bar over the content.
class CompactLayoutBottomNavigation extends StatelessWidget {
  const CompactLayoutBottomNavigation({
    super.key,
    required this.shell,
    required this.destinations,
    required this.currentIndex,
    required this.onSelect,
  });

  final StatefulNavigationShell shell;
  final List<NavDestination> destinations;
  final int currentIndex;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: shell,
      extendBody: true,
      bottomNavigationBar: destinations.length >= 2
          ? Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: GlossyButton(
                borderRadius: 26,
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final itemWidth = constraints.maxWidth / destinations.length;
                    return Stack(
                      children: [
                        _SelectionIndicator(
                          itemWidth: itemWidth,
                          index: currentIndex,
                          color: colors.primary.withValues(alpha: 0.10),
                        ),
                        Row(
                          children: [
                            for (var i = 0; i < destinations.length; i++)
                              Expanded(
                                child: _TabItem(
                                  destination: destinations[i],
                                  isActive: i == currentIndex,
                                  onTap: () => onSelect(i),
                                ),
                              ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          : null,
    );
  }
}

class _TabItem extends StatelessWidget {
  const _TabItem({required this.destination, required this.isActive, required this.onTap});

  final NavDestination destination;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Semantics(
      button: true,
      selected: isActive,
      label: destination.label,
      child: Tooltip(
        message: destination.label,
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
          onTap: onTap,
          child: SizedBox(
            height: 56,
            child: Center(
              child: Icon(
                isActive ? destination.activeIcon : destination.icon,
                color: isActive ? colors.primary : colors.onSurfaceVariant,
                size: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SelectionIndicator extends StatelessWidget {
  const _SelectionIndicator({required this.itemWidth, required this.index, required this.color});

  final double itemWidth;
  final int index;
  final Color color;

  @override
  Widget build(BuildContext context) => AnimatedPositioned(
    duration: const Duration(milliseconds: 280),
    curve: Curves.easeOutCubic,
    left: itemWidth * index,
    top: 0,
    bottom: 0,
    width: itemWidth,
    child: Center(
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    ),
  );
}
