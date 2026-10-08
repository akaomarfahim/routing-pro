import 'package:flutter/material.dart';

/// ============================================================================
/// A ROUTE THAT EXISTS BEFORE ITS SCREEN DOES.
///
/// Lets a feature declare its real route tree - paths, guards, transitions,
/// deep links - while the screen is still being built. Swap the builder in that
/// feature's routes file for the real widget and no route declaration changes.
///
/// Deliberately loud rather than pretty: nobody should ship one of these by
/// accident.
/// ============================================================================
class FeaturePlaceholder extends StatelessWidget {
  const FeaturePlaceholder({
    required this.title,
    this.subtitle,
    this.showAppBar = true,
    this.actions = const <Widget>[],
    super.key,
  });

  final String title;
  final String? subtitle;
  final bool showAppBar;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              title: Text(title),
              leading: Navigator.of(context).canPop()
                  ? IconButton(icon: const Icon(Icons.arrow_back), onPressed: Navigator.of(context).pop)
                  : null,
            )
          : null,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.construction_outlined, size: 40, color: theme.colorScheme.outline),
                const SizedBox(height: 16),
                Text(title, style: theme.textTheme.titleLarge, textAlign: TextAlign.center),
                if (subtitle != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    subtitle!,
                    style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                    textAlign: TextAlign.center,
                  ),
                ],
                if (actions.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  Wrap(spacing: 12, runSpacing: 12, alignment: WrapAlignment.center, children: actions),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
