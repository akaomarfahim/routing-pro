import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../features/dashboard/presentation/routes/dashboard_routes.dart';
import '../navigation/navigation_extensions.dart';
import '../route_module.dart';
import '../route_params.dart';
import '../route_spec.dart';
import '../screens/auth_screens.dart';
import '../shells/auth_shell.dart';
import '../system_routes.dart';

/// SIGN-IN, PASSWORD RECOVERY AND THE E-MAILED RESET DEEP LINK.
///
/// Wrapped in a plain [ShellRoute] so every auth screen shares one centred,
/// max-width layout. Note the specs are still the ones in `SystemRoutes`: the
/// guards redirect to `SystemRoutes.login`, so it cannot live in a feature.
final class AuthModule implements RouteModule {
  const AuthModule();

  @override
  List<RouteSpec> get specs => const [SystemRoutes.login, SystemRoutes.forgotPassword, SystemRoutes.resetPassword];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    ShellRoute(
      builder: (context, state, child) => AuthShell(child: child),
      routes: [
        SystemRoutes.login.route(
          builder: (context, state) => LoginScreen(
            onForgotPassword: () => context.pushTo<void>(SystemRoutes.forgotPassword),
            onSubmit: (email, password) => context.pushTo<void>(DashboardRoutes.root),
          ),
        ),
        SystemRoutes.forgotPassword.route(builder: (context, state) => const ForgotPasswordScreen()),
        // Deep-link target from the reset e-mail. Web-critical: the token
        // lives in the path, so a cold browser load works with zero state.
        SystemRoutes.resetPassword.route(
          builder: (context, state) => ResetPasswordScreen(token: state.requireParam(RouteParams.token)),
        ),
      ],
    ),
  ];
}
