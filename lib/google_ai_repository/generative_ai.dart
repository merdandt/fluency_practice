// Singlenton class for Google AI GenerativeModel
// Initialize with the API key
import 'dart:convert';

import 'package:deepgram_app/google_ai_repository/google_ai_repository.dart';
import 'package:deepgram_app/google_ai_repository/prompt_improve.dart';
import 'package:flutter/foundation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GenerativeAI {
  /// GenerativeAi singleton class
  factory GenerativeAI() => _internalSingleton;
  static final GenerativeAI _internalSingleton = GenerativeAI._internal();
  GenerativeAI._internal()
      : _model = GenerativeModel(
          apiKey: const String.fromEnvironment('GOOGLE_AI_API_KEY'),
          model: 'gemini-pro',
        );

  late final GenerativeModel _model;

  GenerativeModel get model => _model;

  Future<List<String>> generateTopics() async {
    try {
      final content = [Content.text(promptTopics)];
      final response = await model.generateContent(content);
      final list = response.text?.split('#') ?? [];
      list.removeAt(0);

      return list;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  Future<TalkResult?> analizeResult(String text) async {
    final content = [
      Content.text(promptAnalizer.replaceFirst('user_speech_text', text))
    ];
    final response = await model.generateContent(
      content,
      generationConfig: GenerationConfig(temperature: 0.1),
    );

    final responseText = response.text;

    if (responseText == null) throw const FormatException();
    responseText.replaceAll('```json', '');
    responseText.replaceAll('```', '');

    final jsonResponse = json.decode(responseText);

    if (kDebugMode) {
      print(jsonResponse);
    }

    // parse the response to the TalkResult class
    final talkResult = TalkResult.fromJson(jsonResponse);

    return talkResult;
  }

  Future<String> generateImprovedText(String text) async {
    final content = [
      Content.text(promptImprove.replaceFirst('user_speech_text', text))
    ];
    final response = await model.generateContent(content);

    return response.text!;
  }
}
