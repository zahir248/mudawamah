import 'package:mudawamah/features/prayer_times/domain/prayer_times.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times_repository.dart';

/// Week 1 stand-in: the same approximate SGR01 times for every day.
/// Week 2 replaces this with JAKIM data cached on the device.
class FixedPrayerTimesRepository implements PrayerTimesRepository {
  const FixedPrayerTimesRepository();

  @override
  Future<PrayerTimes> forDate(DateTime date) async {
    DateTime at(int hour, int minute) =>
        DateTime(date.year, date.month, date.day, hour, minute);
    return PrayerTimes(
      date: DateTime(date.year, date.month, date.day),
      subuh: at(5, 50),
      syuruk: at(7, 0),
      zohor: at(13, 5),
      asar: at(16, 15),
      maghrib: at(19, 5),
      isyak: at(20, 14),
    );
  }
}
