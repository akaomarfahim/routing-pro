import 'dart:ui';

import 'package:flutter/material.dart';

/// A glass-morphism surface with a soft top-highlight sheen. Child-driven so
/// every feature can reuse the same glass treatment instead of re-implementing
/// blur + gradient border logic per screen.
class GlossyButton extends StatefulWidget {
  const GlossyButton({
    super.key,
    required this.child,
    this.onTap,
    this.borderRadius = 20,
    this.padding = const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
    this.tint,
    this.blurSigma = 14,
  });

  final Widget child;
  final VoidCallback? onTap;
  final double borderRadius;
  final EdgeInsets padding;
  final Color? tint;
  final double blurSigma;

  @override
  State<GlossyButton> createState() => _GlossyButtonState();
}

class _GlossyButtonState extends State<GlossyButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final tint = widget.tint ?? colors.primary;
    final radius = BorderRadius.circular(widget.borderRadius);

    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapCancel: () => setState(() => _pressed = false),
      onTapUp: (_) => setState(() => _pressed = false),
      onTap: widget.onTap,
      child: AnimatedScale(
        scale: _pressed ? 0.97 : 1.0,
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeOut,
        child: ClipRRect(
          borderRadius: radius,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: widget.blurSigma, sigmaY: widget.blurSigma),
            child: Container(
              padding: widget.padding,
              decoration: BoxDecoration(
                borderRadius: radius,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [colors.surface.withValues(alpha: 0.92), colors.surface.withValues(alpha: 0.74)],
                ),
                border: Border.all(color: tint.withValues(alpha: 0.16)),
                boxShadow: [
                  BoxShadow(
                    color: colors.inversePrimary.withValues(alpha: 0.05),
                    blurRadius: 18,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Top sheen highlight.
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            colors.surface.withValues(alpha: 0),
                            colors.surface.withValues(alpha: 0.9),
                            colors.surface.withValues(alpha: 0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  widget.child,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
