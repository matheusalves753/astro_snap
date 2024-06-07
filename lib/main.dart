import 'package:astro_snap/locator.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/data/models/models.dart';
import 'src/infrastructure/navigation/navigation.dart';
import 'src/infrastructure/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(APODEntryModelAdapter());
  setupLocator();
  runApp(AstroSnapApp());
}

class AstroSnapApp extends StatelessWidget {
  final _appRouter = AppRouter();

  AstroSnapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
