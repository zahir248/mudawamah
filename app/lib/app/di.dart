import 'package:get_it/get_it.dart';
import 'package:mudawamah/app/flavor.dart';
import 'package:mudawamah/core/clock.dart';
import 'package:mudawamah/features/prayer_times/data/fixed_prayer_times_repository.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times_repository.dart';

final GetIt getIt = GetIt.instance;

/// Registers app-wide services. Features get their dependencies from here,
/// never by constructing them, so tests can swap any of them.
void configureDependencies(Flavor flavor) {
  getIt
    ..registerSingleton<Flavor>(flavor)
    ..registerSingleton<Clock>(const SystemClock())
    ..registerSingleton<PrayerTimesRepository>(
      const FixedPrayerTimesRepository(),
    );
}
