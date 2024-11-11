import 'package:deepgram_app/app/utils/io_utils.dart';
import 'package:deepgram_app/main/view/main_page.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const fileName = 'fr.mp3';
const fileAssetPath = 'assets/$fileName';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) await copyAssetToFile(fileAssetPath, fileName);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 236, 8, 8),
          // ···
          brightness: Brightness.light,
        ),

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          // ···
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      home: const MainPage(),
    );
  }
}
