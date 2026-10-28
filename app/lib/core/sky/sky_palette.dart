import 'package:flutter/painting.dart';
import 'package:mudawamah/core/sky/sky_phase.dart';

/// Colours of the sky for one phase: a top-to-bottom gradient and the ink
/// that stays readable on it (checked for 4.5:1 against the top stop, where
/// the text sits).
class SkyPalette {
  const SkyPalette({
    required this.gradient,
    required this.onSky,
    this.showStars = false,
  });

  factory SkyPalette.of(SkyPhase phase) => switch (phase) {
    SkyPhase.subuh => const SkyPalette(
      gradient: [
        Color(0xFF1A2350),
        Color(0xFF34437E),
        Color(0xFF9A7FA0),
        Color(0xFFEBB394),
      ],
      onSky: Color(0xFFFFF6E8),
      showStars: true,
    ),
    SkyPhase.dhuha => const SkyPalette(
      gradient: [Color(0xFF3273B2), Color(0xFF8DBCE6), Color(0xFFD7EAF8)],
      onSky: Color(0xFFFFFFFF),
    ),
    SkyPhase.zohor => const SkyPalette(
      gradient: [Color(0xFF2B6FB0), Color(0xFF5E9FD6), Color(0xFFBFDDF3)],
      onSky: Color(0xFFFFFFFF),
    ),
    SkyPhase.asar => const SkyPalette(
      gradient: [Color(0xFFE9A65A), Color(0xFFF2C27E), Color(0xFFF8DDB0)],
      onSky: Color(0xFF3A230F),
    ),
    SkyPhase.maghrib => const SkyPalette(
      gradient: [
        Color(0xFF2A2150),
        Color(0xFF6B3F6E),
        Color(0xFFC9666A),
        Color(0xFFF0A070),
      ],
      onSky: Color(0xFFFFF6E8),
    ),
    SkyPhase.isyak => const SkyPalette(
      gradient: [Color(0xFF0D1330), Color(0xFF18214A), Color(0xFF26305E)],
      onSky: Color(0xFFFFF6E8),
      showStars: true,
    ),
  };

  final List<Color> gradient;
  final Color onSky;
  final bool showStars;
}
