import 'package:flutter_test/flutter_test.dart';
import 'package:mudawamah/core/sky/sky_labels.dart';
import 'package:mudawamah/l10n/gen/app_localizations_ms.dart';

void main() {
  final l10n = AppLocalizationsMs();

  test('shows hours and minutes', () {
    expect(
      l10n.countdown(const Duration(hours: 2, minutes: 14)),
      '2 jam 14 minit',
    );
  });

  test('drops hours under an hour', () {
    expect(l10n.countdown(const Duration(minutes: 9)), '9 minit');
  });

  test('rounds seconds up so it never shows 0 before the prayer', () {
    expect(l10n.countdown(const Duration(seconds: 20)), '1 minit');
  });
}
