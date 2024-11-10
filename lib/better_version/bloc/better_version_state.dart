part of 'better_version_bloc.dart';

enum SpeakingState {
  initial,
  notSpeaking,
  preparing,
  speaking,
}

@freezed
class BetterVersionState with _$BetterVersionState, LoadingStates {
  const factory BetterVersionState({
    required final String userTranscript,
    required final LoadingState loadingState,
    required final SpeakingState speakingState,
    final String? betterVersion,
  }) = _BetterVersionState;

  const BetterVersionState._();

  factory BetterVersionState.initial({
    required final String userTranscript,
  }) =>
      BetterVersionState(
        userTranscript: userTranscript,
        loadingState: LoadingState.initial,
        speakingState: SpeakingState.initial,
      );

  bool get speaking => speakingState == SpeakingState.speaking;
  bool get notSpeaking =>
      speakingState == SpeakingState.notSpeaking ||
      speakingState == SpeakingState.initial;
  bool get preparing => speakingState == SpeakingState.preparing;
}
