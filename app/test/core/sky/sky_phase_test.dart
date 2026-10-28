import 'package:flutter_test/flutter_test.dart';
import 'package:mudawamah/core/sky/sky_phase.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times.dart';

import '../../helpers/fakes.dart';

void main() {
  final day = DateTime(2026, 10, 28);
  DateTime at(int hour, int minute) =>
      DateTime(day.year, day.month, day.day, hour, minute);

  group('skyPhaseAt', () {
    late PrayerTimes times;
    setUp(() async => times = await timesOn(day));

    final cases = <(int, int, SkyPhase)>[
      (0, 30, SkyPhase.isyak),
      (5, 49, SkyPhase.isyak),
      (5, 50, SkyPhase.subuh),
      (6, 59, SkyPhase.subuh),
      (7, 0, SkyPhase.dhuha),
      (13, 5, SkyPhase.zohor),
      (16, 14, SkyPhase.zohor),
      (16, 15, SkyPhase.asar),
      (19, 5, SkyPhase.maghrib),
      (20, 14, SkyPhase.isyak),
      (23, 59, SkyPhase.isyak),
    ];

    for (final (hour, minute, expected) in cases) {
      test('$hour:$minute is $expected', () {
        expect(skyPhaseAt(at(hour, minute), times), expected);
      });
    }
  });

  group('nextPrayerAfter', () {
    test('during Asar the next prayer is Maghrib today', () async {
      final next = nextPrayerAfter(
        at(16, 51),
        await timesOn(day),
        await timesOn(day.add(const Duration(days: 1))),
      );
      expect(next.prayer, Prayer.maghrib);
      expect(next.time, at(19, 5));
    });

    test('after Isyak the next prayer is Subuh tomorrow', () async {
      final tomorrow = await timesOn(DateTime(2026, 10, 29));
      final next = nextPrayerAfter(at(21, 0), await timesOn(day), tomorrow);
      expect(next.prayer, Prayer.subuh);
      expect(next.time, tomorrow.subuh);
    });

    test('exactly at a prayer time the next one is the following', () async {
      final next = nextPrayerAfter(
        at(13, 5),
        await timesOn(day),
        await timesOn(DateTime(2026, 10, 29)),
      );
      expect(next.prayer, Prayer.asar);
    });
  });
}
