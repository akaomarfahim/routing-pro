import 'package:flutter/material.dart';

/// Shared chrome for every unauthenticated screen: one centred column with a
/// sane max width, so sign-in does not stretch to 2000px on a desktop browser
/// and each auth screen does not re-implement the same layout.
class AuthShell extends StatelessWidget {
  const AuthShell({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 420), child: child),
        ),
      ),
    ),
  );
}
