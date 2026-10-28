import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mudawamah/core/sky/sky_palette.dart';

/// The sky behind the top of a screen. Colours fade over [duration] when the
/// phase changes, so the switch at each prayer time is gentle.
class SkyBackground extends StatelessWidget {
  const SkyBackground({
    required this.palette,
    required this.child,
    this.duration = const Duration(seconds: 2),
    super.key,
  });

  final SkyPalette palette;
  final Widget child;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: palette.gradient,
        ),
      ),
      child: Stack(
        children: [
          if (palette.showStars)
            const Positioned.fill(
              child: ExcludeSemantics(child: CustomPaint(painter: _Stars())),
            ),
          child,
        ],
      ),
    );
  }
}

/// A fixed scatter of faint stars. The seed keeps the pattern stable between
/// rebuilds so the stars never jump.
class _Stars extends CustomPainter {
  const _Stars();

  @override
  void paint(Canvas canvas, Size size) {
    final random = Random(7);
    final paint = Paint()..color = const Color(0xFFFFF6E8);
    for (var i = 0; i < 40; i++) {
      final offset = Offset(
        random.nextDouble() * size.width,
        random.nextDouble() * size.height * 0.7,
      );
      paint.color = paint.color.withValues(
        alpha: 0.35 + random.nextDouble() * 0.5,
      );
      canvas.drawCircle(offset, 0.6 + random.nextDouble() * 0.9, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
