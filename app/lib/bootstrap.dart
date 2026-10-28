import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:mudawamah/app/app.dart';
import 'package:mudawamah/app/di.dart';
import 'package:mudawamah/app/flavor.dart';
import 'package:mudawamah/firebase/firebase_options_dev.dart' as dev;
import 'package:mudawamah/firebase/firebase_options_prod.dart' as prod;

/// Shared start-up for every flavor. Each flavor talks to its own Firebase
/// project, so test data never reaches production.
Future<void> bootstrap(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: switch (flavor) {
      Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
      Flavor.prod => prod.DefaultFirebaseOptions.currentPlatform,
    },
  );
  configureDependencies(flavor);
  runApp(const MudawamahApp());
}
