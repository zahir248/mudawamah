import 'dart:math';

import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mudawamah/core/sky/sky_palette.dart';
import 'package:mudawamah/core/sky/sky_phase.dart';

/// WCAG 2.x contrast ratio between two opaque colours.
double contrast(Color a, Color b) {
  final la = a.computeLuminance();
  final lb = b.computeLuminance();
  return (max(la, lb) + 0.05) / (min(la, lb) + 0.05);
}

void main() {
  // Header text sits at the top of the sky, so it must pass against the
  // first gradient stop for every phase.
  for (final phase in SkyPhase.values) {
    test('$phase header text meets 4.5:1 contrast', () {
      final palette = SkyPalette.of(phase);
      expect(
        contrast(palette.onSky, palette.gradient.first),
        greaterThanOrEqualTo(4.5),
      );
    });
  }

  test('stars only show in the dark skies', () {
    final starry = SkyPhase.values.where((p) => SkyPalette.of(p).showStars);
    expect(starry, unorderedEquals([SkyPhase.subuh, SkyPhase.isyak]));
  });
}
