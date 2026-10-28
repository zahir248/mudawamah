import 'package:mudawamah/features/prayer_times/domain/prayer_times.dart';

abstract interface class PrayerTimesRepository {
  /// Prayer times for the calendar day of [date] in the user's zone.
  Future<PrayerTimes> forDate(DateTime date);
}
