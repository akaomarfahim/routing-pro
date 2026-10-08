import 'package:flutter/material.dart';

import '../navigation/navigation_extensions.dart';
import '../system_routes.dart';

/// Sign-in form shell. Wire [onSubmit] to your auth controller - it must call
/// the controller and nothing else (no `context.go`): the router owns where
/// the user lands once the auth state changes.
///
/// Replace this with your real login screen; the route declaration only needs a
/// widget that accepts [onForgotPassword].
class LoginScreen extends StatefulWidget {
  const LoginScreen({required this.onForgotPassword, this.onSubmit, super.key});

  final VoidCallback onForgotPassword;
  final void Function(String email, String password)? onSubmit;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onSubmit = widget.onSubmit;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Icon(Icons.storefront, size: 48),
        const SizedBox(height: 16),
        Text('Sign in', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
        const SizedBox(height: 24),
        TextField(
          controller: _email,
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.username],
          decoration: const InputDecoration(labelText: 'Email'),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _password,
          obscureText: true,
          autofillHints: const [AutofillHints.password],
          decoration: const InputDecoration(labelText: 'Password'),
        ),
        const SizedBox(height: 24),
        FilledButton(
          onPressed: onSubmit == null ? null : () => onSubmit(_email.text.trim(), _password.text),
          child: const Text('Sign in'),
        ),
        TextButton(onPressed: widget.onForgotPassword, child: const Text('Forgot password?')),
      ],
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('Reset password', style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: 8),
      const Text('We will e-mail a link to /reset-password/<token>.', textAlign: TextAlign.center),
      const SizedBox(height: 24),
      TextButton(onPressed: () => context.goTo(SystemRoutes.login), child: const Text('Back to sign in')),
    ],
  );
}

/// Deep-link target from the reset e-mail. The token lives in the path, so a
/// cold browser load works with zero app state.
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({required this.token, super.key});

  final String token;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('Choose a new password', style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: 8),
      SelectableText('Token: $token'),
    ],
  );
}
