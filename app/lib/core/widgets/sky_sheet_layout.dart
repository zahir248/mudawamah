import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mudawamah/core/sky/sky_background.dart';
import 'package:mudawamah/core/sky/sky_cubit.dart';
import 'package:mudawamah/core/sky/sky_palette.dart';
import 'package:mudawamah/core/sky/sky_phase.dart';
import 'package:mudawamah/core/theme/app_colors.dart';

/// The layout every main screen shares: the sky on top and a paper sheet
/// rising over it. [header] is drawn on the sky in the sky's ink colour.
class SkySheetLayout extends StatelessWidget {
  const SkySheetLayout({
    required this.header,
    required this.sheet,
    super.key,
  });

  final Widget Function(BuildContext context, SkyPalette palette) header;
  final Widget sheet;

  @override
  Widget build(BuildContext context) {
    final phase = context.select<SkyCubit, SkyPhase>(
      (cubit) => cubit.state?.phase ?? SkyPhase.zohor,
    );
    final palette = SkyPalette.of(phase);

    return SkyBackground(
      palette: palette,
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DefaultTextStyle.merge(
              style: TextStyle(color: palette.onSky),
              child: header(context, palette),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: AppColors.paper,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32),
                  ),
                ),
                child: sheet,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
