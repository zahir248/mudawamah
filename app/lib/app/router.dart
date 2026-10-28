import 'package:go_router/go_router.dart';
import 'package:mudawamah/app/shell.dart';
import 'package:mudawamah/features/group/presentation/group_page.dart';
import 'package:mudawamah/features/mutabaah/presentation/mutabaah_page.dart';
import 'package:mudawamah/features/today/presentation/today_page.dart';

abstract final class Routes {
  static const today = '/hari-ini';
  static const mutabaah = '/mutabaah';
  static const group = '/kumpulan';
}

GoRouter buildRouter() => GoRouter(
  initialLocation: Routes.today,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          AppShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.today,
              builder: (context, state) => const TodayPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.mutabaah,
              builder: (context, state) => const MutabaahPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.group,
              builder: (context, state) => const GroupPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
