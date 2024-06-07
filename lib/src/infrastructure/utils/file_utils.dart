import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileUtils {
  Future<Directory> getDocumentsDirectory() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory;
  }
}
