import 'package:astro_snap/locator.dart';
import 'package:astro_snap/src/presentation/gallery_page/views/gallery_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/data/models/models.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(APODEntryModelAdapter());
  setupLocator();
  runApp(const AstroSnapApp());
}

class AstroSnapApp extends StatelessWidget {
  const AstroSnapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GalleryPage(),
    );
  }
}
