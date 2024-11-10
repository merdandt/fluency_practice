import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:universal_file/universal_file.dart';

/// mimic a file other than in assets
Future<void> copyAssetToFile(String assetPath, String filename) async {
  ByteData data = await rootBundle.load(assetPath);
  List<int> bytes = data.buffer.asUint8List();
  final path = await getLocalFilePath(filename);
  await File(path).writeAsBytes(bytes);
  // print('$assetPath/$filename copied to $path');
}

Future<String> getLocalFilePath(String filename) async {
  final appDocDir = await getApplicationDocumentsDirectory();
  String appDocPath = appDocDir.path;
  return '$appDocPath/$filename';
}

Future<String> saveDataToFile(String filename, Uint8List data) async {
  final path = await getLocalFilePath(filename);
  await File(path).writeAsBytes(data);
  return path;
}

const fileName = 'fr.mp3';
const fileAssetPath = 'assets/$fileName';
