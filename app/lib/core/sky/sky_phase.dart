import 'package:mudawamah/features/prayer_times/domain/prayer_times.dart';

/// The part of the day that decides the sky colours.
///
/// Dhuha (sunrise to Zohor) has its own sky because it is no longer Subuh
/// time but not yet Zohor.
enum SkyPhase { subuh, dhuha, zohor, asar, maghrib, isyak }

/// Resolves the sky phase for [now] from that day's [times].
///
/// Before Subuh it is still the night of Isyak.
SkyPhase skyPhaseAt(DateTime now, PrayerTimes times) {
  if (now.isBefore(times.subuh)) return SkyPhase.isyak;
  if (now.isBefore(times.syuruk)) return SkyPhase.subuh;
  if (now.isBefore(times.zohor)) return SkyPhase.dhuha;
  if (now.isBefore(times.asar)) return SkyPhase.zohor;
  if (now.isBefore(times.maghrib)) return SkyPhase.asar;
  if (now.isBefore(times.isyak)) return SkyPhase.maghrib;
  return SkyPhase.isyak;
}

/// The next obligatory prayer after [now] and when it starts.
///
/// After Isyak the next prayer is Subuh from [tomorrow].
({Prayer prayer, DateTime time}) nextPrayerAfter(
  DateTime now,
  PrayerTimes today,
  PrayerTimes tomorrow,
) {
  for (final prayer in Prayer.values) {
    final time = today.timeOf(prayer);
    if (time.isAfter(now)) return (prayer: prayer, time: time);
  }
  return (prayer: Prayer.subuh, time: tomorrow.subuh);
}
