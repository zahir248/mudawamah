import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mudawamah/core/sky/sky_cubit.dart';
import 'package:mudawamah/core/sky/sky_labels.dart';
import 'package:mudawamah/core/theme/app_theme.dart';
import 'package:mudawamah/core/widgets/sky_sheet_layout.dart';
import 'package:mudawamah/l10n/gen/app_localizations.dart';

class TodayPage extends StatelessWidget {
  const TodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return SkySheetLayout(
      header: (context, palette) {
        final sky = context.watch<SkyCubit>().state;
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.nowPrayer,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                sky == null ? '' : l10n.phaseName(sky.phase),
                style: TextStyle(
                  fontFamily: AppFonts.display,
                  fontSize: 64,
                  height: 1,
                  color: palette.onSky,
                ),
              ),
              const SizedBox(height: 12),
              if (sky != null)
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: palette.onSky,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    child: Text(
                      l10n.nextPrayerIn(
                        l10n.prayerName(sky.nextPrayer),
                        l10n.countdown(sky.untilNext),
                      ),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: palette.gradient.first,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
      sheet: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          l10n.comingSoon,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
