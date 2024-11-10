import 'package:bloc/bloc.dart';
import 'package:deepgram_app/deepgram_repository/deepgramm_service.dart';
import 'package:deepgram_speech_to_text/deepgram_speech_to_text.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recording_event.dart';
part 'recording_state.dart';
part 'recording_bloc.freezed.dart';

class RecordingBloc extends Bloc<RecordingEvent, RecordingState> {
  RecordingBloc({required String topic, required DeepgrammService deepgram})
      : _deepgram = deepgram,
        super(RecordingState.initial(topic: topic)) {
    on<RecordingTalkChanged>(_onRecordingTalkChanged);
    on<RecordingUserReadyPressed>(_onRecordingUserReadyPressed);
    on<RecordingStarted>(_onRecordingStarted);
    on<RecordingStopped>(_onRecordingStopped);
    on<RecordingErrorOccured>(_onRecordingErrorOccured);
    on<RecordingStateCleared>(_onRecordingStateCleared);
    on<RecordingTalkInterrupted>(_onRecordingTalkInterrupted);
  }

  final DeepgrammService _deepgram;

  void _onRecordingTalkChanged(
      RecordingTalkChanged event, Emitter<RecordingState> emit) {
    final newTranscription = event.recordingTalk;

    // Append the new transcription to the full transcription
    final fullTranscription =
        '${state.recordingTalk} ${(newTranscription.transcript ?? '')}';

    // Get the current display text
    String displayText = state.recordingTalkChunk;

    // Append the new transcription to the displayText
    displayText = '$displayText ${(newTranscription.transcript ?? '')}'.trim();

    // Define the maximum display length in characters (adjust this value)
    const int maxDisplayLength = 200;

    if (displayText.length > maxDisplayLength) {
      // Reset the displayText
      displayText = newTranscription.transcript ?? '';
    }

    // Alternatively, to keep the last two sentences, you can use the following:
    /*
  // Split the displayText into sentences
  List<String> sentences = displayText.split(RegExp(r'(?<=[.!?])\s+'));

  // Keep only the last two sentences
  if (sentences.length > 2) {
    sentences = sentences.sublist(sentences.length - 2);
    displayText = sentences.join(' ');
  }
  */

    // Emit the new state with updated transcriptions
    emit(state.copyWith(
      recordingTalk: fullTranscription,
      recordingTalkChunk: displayText,
    ));

    if (kDebugMode) {
      print('Transcription: $fullTranscription');
    }
  }

  void _onRecordingUserReadyPressed(
      RecordingUserReadyPressed event, Emitter<RecordingState> emit) {
    emit(state.copyWith(status: RecordingStatus.threeTwoOne));
  }

  void _onRecordingStateCleared(
      RecordingStateCleared event, Emitter<RecordingState> emit) {
    emit(RecordingState.initial(topic: ''));
  }

  void _onRecordingStarted(
      RecordingStarted event, Emitter<RecordingState> emit) async {
    try {
      final audioStream = await _deepgram.createAudioStream();

      final stream = _deepgram.transcribeFromLiveAudioStream(audioStream);

      stream.listen((res) {
        add(RecordingTalkChanged(recordingTalk: res));
      });
      emit(state.copyWith(status: RecordingStatus.recording));
    } on Object catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      emit(state.copyWith(status: RecordingStatus.recordingError));
    }
  }

  void _onRecordingStopped(
      RecordingStopped event, Emitter<RecordingState> emit) async {
    await _deepgram.stopAudioStream();
    emit(state.copyWith(status: RecordingStatus.recordingStopped));
  }

  void _onRecordingErrorOccured(
      RecordingErrorOccured event, Emitter<RecordingState> emit) {
    emit(state.copyWith(status: RecordingStatus.recordingError));
  }

  void _onRecordingTalkInterrupted(
      RecordingTalkInterrupted event, Emitter<RecordingState> emit) {
    _deepgram.stopAudioStream();
    emit(state.copyWith(status: RecordingStatus.areYouReady));
  }
}
