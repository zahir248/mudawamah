import 'package:flutter/widgets.dart';
import 'package:mudawamah/app/app.dart';
import 'package:mudawamah/app/di.dart';
import 'package:mudawamah/app/flavor.dart';

/// Shared start-up for every flavor. Firebase initialisation joins here once
/// the Firebase projects exist.
void bootstrap(Flavor flavor) {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(flavor);
  runApp(const MudawamahApp());
}
