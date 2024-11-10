// Singleton class to handle the Deepgram API

import 'package:audioplayers/audioplayers.dart';
import 'package:deepgram_app/app/utils/io_utils.dart';
import 'package:deepgram_speech_to_text/deepgram_speech_to_text.dart';
import 'package:flutter/foundation.dart';
import 'package:record/record.dart';

class DeepgrammService {
  /// DeepgrammService singleton class
  factory DeepgrammService() => _internalSingleton;
  static final DeepgrammService _internalSingleton =
      DeepgrammService._internal();

  DeepgrammService._internal()
      : mic = AudioRecorder(),
        player = AudioPlayer(),
        _deepgram = Deepgram(
          const String.fromEnvironment('DEEPGRAM_API_KEY'),
          baseQueryParams: {
            'model': 'nova-2',
            'detect_language': true,
            'filler_words': false,
            'punctuation': true,
            'smart_format': true,
            'punctuate': true,
            'paragraphs': true,
            'utterances': true,
            'utt_split': 1.5,
          },
        );

  final AudioRecorder mic;
  final AudioPlayer player;

  // Check mic permissions and request them if needed
  Future<bool> checkMicPermissions() async => await mic.hasPermission();

  // Create query params for the Deepgram API
  Map<String, dynamic> _queryParms() => {
        'detect_language': false, // not supported by streaming API
        'language': 'en',
        // must specify encoding and sample_rate according to the audio stream
        'encoding': 'linear16',
        'sample_rate': 16000,
      };

  late final Deepgram _deepgram;

  Deepgram get deepgram => _deepgram;

  Future<bool> checkApiKey() async {
    final isValid = await deepgram.isApiKeyValid();

    return isValid;
  }

  // Create a stream of audio data from the microphone
  Future<Stream<List<int>>> createAudioStream({
    AudioEncoder encoder = AudioEncoder.pcm16bits,
    int sampleRate = 16000,
    int numChannels = 1,
  }) async {
    final audioStream = await mic.startStream(RecordConfig(
      encoder: encoder,
      sampleRate: sampleRate,
      numChannels: numChannels,
    ));

    return audioStream;
  }

  // Stop the audio stream
  Future<void> stopAudioStream() async {
    await mic.stop();
  }

  Stream<DeepgramSttResult> transcribeFromLiveAudioStream(
      Stream<List<int>> audioStream) {
    // alternativly you can use the DeepgramLiveTranscriber class :
    /*
      final transcriber = deepgram.createLiveTranscriber(audioStream, queryParams: params);
  
      transcriber.start();
  
      transcriber.stream.listen((res) {
        print(res.transcript);
      });
      transcriber.close();
      */

    return deepgram.transcribeFromLiveAudioStream(
      audioStream,
      queryParams: _queryParms(),
    );
  }

  Future<DeepgramTtsResult> getTTS({
    required String text,
    Map<String, dynamic>? queryParams,
  }) async {
    Deepgram deepgramTTS = Deepgram(
        const String.fromEnvironment('DEEPGRAM_API_KEY'),
        baseQueryParams: {
          'model': 'aura-asteria-en',
          'encoding': "linear16",
          'container': "wav",
        });
    final res = await deepgramTTS.speakFromText(text, queryParams: queryParams);

    return res;
  }

  Future<void> playTTS(DeepgramTtsResult tts) async {
    if (kIsWeb) {
      await player.play(BytesSource(tts.data));
    } else {
      int random = DateTime.now().millisecondsSinceEpoch;
      final path = await saveDataToFile("$random.wav", tts.data);
      await player.play(DeviceFileSource(path));
    }
  }

  Future<void> stopPlayer() async {
    await player.stop();
  }
}
