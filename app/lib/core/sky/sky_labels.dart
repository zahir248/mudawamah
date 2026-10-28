import 'package:mudawamah/core/sky/sky_phase.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times.dart';
import 'package:mudawamah/l10n/gen/app_localizations.dart';

extension SkyLabels on AppLocalizations {
  String phaseName(SkyPhase phase) => switch (phase) {
    SkyPhase.subuh => phaseSubuh,
    SkyPhase.dhuha => phaseDhuha,
    SkyPhase.zohor => phaseZohor,
    SkyPhase.asar => phaseAsar,
    SkyPhase.maghrib => phaseMaghrib,
    SkyPhase.isyak => phaseIsyak,
  };

  String prayerName(Prayer prayer) => switch (prayer) {
    Prayer.subuh => phaseSubuh,
    Prayer.zohor => phaseZohor,
    Prayer.asar => phaseAsar,
    Prayer.maghrib => phaseMaghrib,
    Prayer.isyak => phaseIsyak,
  };

  /// "2 jam 14 minit", or "14 minit" when under an hour. Rounds up so the
  /// countdown never reads 0 while the prayer has not started.
  String countdown(Duration duration) {
    final totalMinutes = (duration.inSeconds / 60).ceil();
    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;
    return hours == 0
        ? durationMinutes(minutes)
        : durationHoursMinutes(hours, minutes);
  }
}
