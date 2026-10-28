import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mudawamah/core/clock.dart';
import 'package:mudawamah/core/sky/sky_phase.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times_repository.dart';

class SkyState extends Equatable {
  const SkyState({
    required this.phase,
    required this.nextPrayer,
    required this.untilNext,
  });

  final SkyPhase phase;
  final Prayer nextPrayer;
  final Duration untilNext;

  @override
  List<Object?> get props => [phase, nextPrayer, untilNext];
}

/// Keeps the sky in step with the prayer times, checking every `tick`.
class SkyCubit extends Cubit<SkyState?> {
  SkyCubit({
    required PrayerTimesRepository prayerTimes,
    required Clock clock,
    Duration tick = const Duration(seconds: 30),
  }) : _prayerTimes = prayerTimes,
       _clock = clock,
       _tick = tick,
       super(null);

  final PrayerTimesRepository _prayerTimes;
  final Clock _clock;
  final Duration _tick;
  Timer? _timer;

  /// Computes the sky now and keeps it updated until the cubit closes.
  Future<void> start() async {
    await refresh();
    _timer?.cancel();
    _timer = Timer.periodic(_tick, (_) => unawaited(refresh()));
  }

  Future<void> refresh() async {
    final now = _clock.now();
    final today = await _prayerTimes.forDate(now);
    final tomorrow = await _prayerTimes.forDate(
      DateTime(now.year, now.month, now.day + 1),
    );
    final next = nextPrayerAfter(now, today, tomorrow);
    if (isClosed) return;
    emit(
      SkyState(
        phase: skyPhaseAt(now, today),
        nextPrayer: next.prayer,
        untilNext: next.time.difference(now),
      ),
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
