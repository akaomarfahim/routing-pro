import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/application/auth_controller.dart';
import '../guards/guard_context.dart';
import '../guards/guards.dart';
import '../guards/route_guard.dart';
import '../navigation/navigation_extensions.dart';
import '../route_spec.dart';
import '../routing_providers.dart';

/// ============================================================================
/// THE WHOLE ROUTE TABLE, AND WHAT THIS SESSION MAY DO WITH IT.
///
/// A dev tool, and the fastest way to understand the layer: every registered
/// [RouteSpec] with its resolved path, its composed guard chain, and the
/// verdict that `RedirectPolicy` would reach right now. Sign in as a cashier
/// and half the list turns red - with no permission logic written here, only
/// the same guards the router runs.
///
/// Everything it shows comes from two objects: `RouteRegistry` (what exists)
/// and `RouteSpec.accessGuard` (who may enter).
/// ============================================================================
class RouteInspectorScreen extends ConsumerWidget {
  const RouteInspectorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registry = ref.watch(routeRegistryProvider);
    final navigation = ref.watch(appNavigationProvider);
    final auth = ref.watch(authControllerProvider);
    final session = auth.sessionOrNull;

    // Specs sorted by path so parents sit above their children.
    final specs = [...registry.specs]..sort((a, b) => a.path.compareTo(b.path));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Route inspector'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(28),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                session == null
                    ? '${specs.length} routes - no session'
                    : '${specs.length} routes - ${session.displayName} '
                          '(${session.roleNames.join(', ')}) - ${session.permissionKeys.length} permissions',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: specs.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final spec = specs[index];

          // Exactly what the router asks, for this spec, right now.
          final result = spec.accessGuard.evaluate(
            GuardContext(
              auth: auth,
              uri: Uri.parse(spec.path),
              matchedLocation: spec.path,
              route: spec,
              homeFor: navigation.homeFor,
            ),
          );

          final allowed = result is GuardAllow;
          final needsParams = spec.path.contains(':');
          final colors = Theme.of(context).colorScheme;

          return ListTile(
            dense: true,
            leading: Icon(
              allowed ? Icons.check_circle_outline : Icons.block,
              color: allowed ? colors.primary : colors.error,
              size: 20,
            ),
            title: Text(spec.path, style: const TextStyle(fontFamily: 'monospace')),
            subtitle: Text(
              '${spec.name}  ·  ${_guardLabel(spec.accessGuard)}'
              '${result is GuardRedirect ? '\n→ ${result.reason}' : ''}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: needsParams
                ? const Tooltip(message: 'Needs path params', child: Icon(Icons.link_off, size: 18))
                : const Icon(Icons.chevron_right, size: 18),
            // Tap an allowed route to go there; tap a blocked one to watch the
            // guard redirect you. Both are useful.
            onTap: needsParams ? null : () => context.goTo(spec),
          );
        },
      ),
    );
  }

  /// Flattens the composed chain into something readable: `auth + order:read`.
  static String _guardLabel(RouteGuard guard) {
    final parts = <String>[];

    void describe(RouteGuard g) {
      switch (g) {
        case CompositeGuard(:final guards):
          guards.forEach(describe);
        case AllowGuard():
          parts.add('open');
        case AuthGuard():
          parts.add('auth');
        case GuestGuard():
          parts.add('guest only');
        case PermissionGuard(:final permissions, :final requireAll):
          parts.add(permissions.join(requireAll ? ' + ' : ' | '));
        case ResourceGuard(:final resource):
          parts.add('any $resource:*');
        case RoleGuard(:final roles):
          parts.add('role ${roles.join('|')}');
        case OpenShiftGuard():
          parts.add('open shift');
        case EmailVerifiedGuard():
          parts.add('email verified');
        default:
          parts.add(g.runtimeType.toString());
      }
    }

    describe(guard);
    return parts.isEmpty ? 'open' : parts.join(' + ');
  }
}
