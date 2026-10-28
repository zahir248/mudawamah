import 'package:flutter/material.dart';
import 'package:mudawamah/core/theme/app_colors.dart';

abstract final class AppFonts {
  static const display = 'Newsreader';
  static const body = 'PlusJakartaSans';
  static const arabic = 'Amiri';
  static const hand = 'Caveat';
}

abstract final class AppTheme {
  static ThemeData light() {
    final scheme = ColorScheme.fromSeed(
      seedColor: AppColors.ink,
      primary: AppColors.ink,
      secondary: AppColors.gold,
      surface: AppColors.paper,
    );

    // Body text starts at 16 so older users can read it without zooming.
    const text = TextTheme(
      displayLarge: TextStyle(fontFamily: AppFonts.display, fontSize: 64),
      headlineMedium: TextStyle(fontFamily: AppFonts.display, fontSize: 32),
      titleLarge: TextStyle(fontFamily: AppFonts.display, fontSize: 24),
      titleMedium: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontSize: 17),
      bodyMedium: TextStyle(fontSize: 16),
      bodySmall: TextStyle(fontSize: 14, color: AppColors.inkMuted),
      labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    );

    return ThemeData(
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColors.paper,
      fontFamily: AppFonts.body,
      textTheme: text.apply(
        bodyColor: AppColors.ink,
        displayColor: AppColors.ink,
      ),
      materialTapTargetSize: MaterialTapTargetSize.padded,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          backgroundColor: AppColors.ink,
          foregroundColor: AppColors.paper,
          textStyle: const TextStyle(
            fontFamily: AppFonts.body,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
