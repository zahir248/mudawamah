import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mudawamah/core/sky/sky_cubit.dart';
import 'package:mudawamah/core/sky/sky_phase.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times.dart';

import '../../helpers/fakes.dart';

void main() {
  late FakeClock clock;

  setUp(() => clock = FakeClock(DateTime(2026, 10, 28, 16, 51)));

  blocTest<SkyCubit, SkyState?>(
    'emits Asar with Maghrib next and the time left',
    build: () => SkyCubit(prayerTimes: testPrayerTimes, clock: clock),
    act: (cubit) => cubit.refresh(),
    expect: () => const [
      SkyState(
        phase: SkyPhase.asar,
        nextPrayer: Prayer.maghrib,
        untilNext: Duration(hours: 2, minutes: 14),
      ),
    ],
  );

  blocTest<SkyCubit, SkyState?>(
    'moves to Maghrib when the clock passes Maghrib time',
    build: () => SkyCubit(prayerTimes: testPrayerTimes, clock: clock),
    act: (cubit) async {
      await cubit.refresh();
      clock.current = DateTime(2026, 10, 28, 19, 6);
      await cubit.refresh();
    },
    skip: 1,
    expect: () => const [
      SkyState(
        phase: SkyPhase.maghrib,
        nextPrayer: Prayer.isyak,
        untilNext: Duration(hours: 1, minutes: 8),
      ),
    ],
  );
}
