import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mudawamah/app/di.dart';
import 'package:mudawamah/app/router.dart';
import 'package:mudawamah/core/clock.dart';
import 'package:mudawamah/core/sky/sky_cubit.dart';
import 'package:mudawamah/core/theme/app_theme.dart';
import 'package:mudawamah/features/prayer_times/domain/prayer_times_repository.dart';
import 'package:mudawamah/l10n/gen/app_localizations.dart';

class MudawamahApp extends StatefulWidget {
  const MudawamahApp({super.key});

  @override
  State<MudawamahApp> createState() => _MudawamahAppState();
}

class _MudawamahAppState extends State<MudawamahApp> {
  final GoRouter _router = buildRouter();

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // The sky is shared by every tab, so it lives above the router.
    return BlocProvider(
      create: (_) {
        final cubit = SkyCubit(
          prayerTimes: getIt<PrayerTimesRepository>(),
          clock: getIt<Clock>(),
        );
        unawaited(cubit.start());
        return cubit;
      },
      child: MaterialApp.router(
        onGenerateTitle: (context) => AppLocalizations.of(context).appName,
        theme: AppTheme.light(),
        routerConfig: _router,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: const Locale('ms'),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
