import 'package:mudawamah/core/clock.dart';
import 'package:mudawamah/features/prayer_times/data/fixed_prayer_times_repository.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times.dart';

class FakeClock implements Clock {
  FakeClock(this.current);

  DateTime current;

  @override
  DateTime now() => current;
}

/// Subuh 5:50, syuruk 7:00, Zohor 13:05, Asar 16:15, Maghrib 19:05,
/// Isyak 20:14 on every day.
const testPrayerTimes = FixedPrayerTimesRepository();

Future<PrayerTimes> timesOn(DateTime date) => testPrayerTimes.forDate(date);
