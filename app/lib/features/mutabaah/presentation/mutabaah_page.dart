import 'package:flutter/material.dart';
import 'package:mudawamah/core/theme/app_theme.dart';
import 'package:mudawamah/core/widgets/sky_sheet_layout.dart';
import 'package:mudawamah/l10n/gen/app_localizations.dart';

/// Placeholder until the mutabaah sheet is built in week 3.
class MutabaahPage extends StatelessWidget {
  const MutabaahPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return SkySheetLayout(
      header: (context, palette) => Padding(
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
        child: Text(
          l10n.navMutabaah,
          style: TextStyle(
            fontFamily: AppFonts.display,
            fontSize: 40,
            color: palette.onSky,
          ),
        ),
      ),
      sheet: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(l10n.comingSoon),
      ),
    );
  }
}
