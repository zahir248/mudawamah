import 'package:flutter/material.dart';
import 'package:mudawamah/core/theme/app_theme.dart';
import 'package:mudawamah/core/widgets/sky_sheet_layout.dart';
import 'package:mudawamah/l10n/gen/app_localizations.dart';

/// Placeholder until groups are built in week 5.
class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return SkySheetLayout(
      header: (context, palette) => Padding(
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
        child: Text(
          l10n.navGroup,
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
