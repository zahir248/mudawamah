import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mudawamah/app/app.dart';
import 'package:mudawamah/app/di.dart';
import 'package:mudawamah/app/flavor.dart';
import 'package:mudawamah/core/clock.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times_repository.dart';

import '../helpers/fakes.dart';

void main() {
  setUp(() {
    getIt
      ..registerSingleton<Flavor>(Flavor.dev)
      ..registerSingleton<Clock>(FakeClock(DateTime(2026, 10, 28, 16, 51)))
      ..registerSingleton<PrayerTimesRepository>(testPrayerTimes);
  });

  tearDown(getIt.reset);

  testWidgets('opens on Today with the current prayer and countdown', (
    tester,
  ) async {
    await tester.pumpWidget(const MudawamahApp());
    await tester.pump();

    expect(find.text('Asar'), findsOneWidget);
    expect(find.text('Maghrib dalam 2 jam 14 minit'), findsOneWidget);
    expect(find.text('Hari ini'), findsOneWidget);

    // Leave no periodic timer running when the test ends.
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('switches tabs from the bottom bar', (tester) async {
    await tester.pumpWidget(const MudawamahApp());
    await tester.pump();

    await tester.tap(find.text('Kumpulan'));
    await tester.pumpAndSettle();

    expect(find.text('Kumpulan'), findsNWidgets(2));
    await tester.pumpWidget(const SizedBox());
  });
}
