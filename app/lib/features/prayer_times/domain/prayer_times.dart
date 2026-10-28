import 'package:equatable/equatable.dart';

/// The five obligatory prayers, in the order they fall in a day.
enum Prayer { subuh, zohor, asar, maghrib, isyak }

/// Prayer times for one zone on one date, in local time.
class PrayerTimes extends Equatable {
  const PrayerTimes({
    required this.date,
    required this.subuh,
    required this.syuruk,
    required this.zohor,
    required this.asar,
    required this.maghrib,
    required this.isyak,
  });

  final DateTime date;
  final DateTime subuh;
  final DateTime syuruk;
  final DateTime zohor;
  final DateTime asar;
  final DateTime maghrib;
  final DateTime isyak;

  DateTime timeOf(Prayer prayer) => switch (prayer) {
    Prayer.subuh => subuh,
    Prayer.zohor => zohor,
    Prayer.asar => asar,
    Prayer.maghrib => maghrib,
    Prayer.isyak => isyak,
  };

  @override
  List<Object?> get props => [
    date,
    subuh,
    syuruk,
    zohor,
    asar,
    maghrib,
    isyak,
  ];
}
