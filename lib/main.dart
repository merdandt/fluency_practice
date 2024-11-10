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

// // reference : https://developers.deepgram.com/reference/listen-file
// Map<String, dynamic> baseParams = {
//   'model': 'nova-2-general',
//   'detect_language': true,
//   'filler_words': false,
//   'punctuation': true,
// };

// // make sure to add your API key in the .env file (which is added in the .gitignore and pubspect.yaml's assets)
// final apiKey = dotenv.get("DEEPGRAM_API_KEY");
// Deepgram deepgram = Deepgram(apiKey, baseQueryParams: baseParams);

// void checkApiKey() async {
//   print('Checking API key...');
//   final isValid = await deepgram.isApiKeyValid();

//   print('API key is valid: $isValid');
// }

// void fromFile() async {
//   // web needs user to pick file
//   if (kIsWeb) {
//     FilePickerResult? result = await FilePicker.platform.pickFiles();

//     if (result == null) return;
//     final data = result.files.first.bytes;
//     if (data == null) return;
//     final res = await deepgram.transcribeFromBytes(data);
//     print(res.transcript);
//   } else {
//     // ios android ...
//     print('Transcribing from file...');
//     final path = await getLocalFilePath(fileName);
//     final file = File(path);

//     final res = await deepgram.transcribeFromFile(file);
//     print(res.transcript);
//   }
// }

// void fromUrl() async {
//   print('Transcribing from url...');
//   final res = await deepgram.transcribeFromUrl(url);
//   print(res.transcript);
// }

// void fromBytes() async {
//   print('Transcribing from bytes...');
//   final data = await rootBundle.load(fileAssetPath);
//   final bytes = data.buffer.asUint8List();
//   final res = await deepgram.transcribeFromBytes(bytes);
//   print(res.transcript);
// }

// final mic = AudioRecorder();
// void startStream() async {
//   await mic.hasPermission();

//   final audioStream = await mic.startStream(const RecordConfig(
//     encoder: AudioEncoder.pcm16bits,
//     sampleRate: 16000,
//     numChannels: 1,
//   ));

//   print('Recording started...');

//   final liveParams = {
//     'detect_language': false, // not supported by streaming API
//     'language': 'en',
//     // must specify encoding and sample_rate according to the audio stream
//     'encoding': 'linear16',
//     'sample_rate': 16000,
//   };

//   final stream = deepgram.transcribeFromLiveAudioStream(audioStream,
//       queryParams: liveParams);

//   stream.listen((res) {
//     print(res.transcript);
//   });

//   // alternativly you can use the DeepgramLiveTranscriber class :
//   /*
//   final transcriber = deepgram.createLiveTranscriber(audioStream, queryParams: params);

//   transcriber.start();

//   transcriber.stream.listen((res) {
//     print(res.transcript);
//   });
//   transcriber.close();
//   */
// }

// void stopStream() async {
//   print('Recording stopped');
//   await mic.stop();
// }

// void speakFromText() async {
//   Deepgram deepgramTTS = Deepgram(apiKey, baseQueryParams: {
//     'model': 'aura-asteria-en',
//     'encoding': "linear16",
//     'container': "wav",
//   });
//   final res = await deepgramTTS.speakFromText(
//     "hello, how are you today ?",
//   );

//   final player = AudioPlayer();

//   if (kIsWeb) {
//     await player.play(BytesSource(res.data));
//   } else {
//     int random = DateTime.now().millisecondsSinceEpoch;
//     final path = await saveDataToFile("$random.wav", res.data);
//     await player.play(DeviceFileSource(path));
//   }
// }

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
          seedColor: const Color.fromARGB(255, 11, 81, 194),
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
