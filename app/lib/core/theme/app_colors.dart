import 'package:flutter/painting.dart';

/// Brand colours shared by every screen. Sky colours live in SkyPalette.
abstract final class AppColors {
  /// Background of the sheet that rises over the sky.
  static const paper = Color(0xFFFFFBF4);

  /// Tinted surface for rows and cards on the paper.
  static const paperTint = Color(0xFFF6EEE2);

  /// Main text and primary buttons (the logo's deep purple).
  static const ink = Color(0xFF2A2547);

  /// Supporting text on paper; 4.5:1 or better against [paper].
  static const inkMuted = Color(0xFF5E566B);

  /// The logo star and the pelita flame.
  static const gold = Color(0xFFF2C27E);

  /// Completed amalan.
  static const done = Color(0xFF2F6B4F);

  /// Hairlines on paper.
  static const rule = Color(0xFFEADFCF);
}
