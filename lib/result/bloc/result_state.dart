part of 'result_bloc.dart';

@freezed
class ResultState with _$ResultState, LoadingStates {
  const factory ResultState({
    required final String userTalk,
    required final LoadingState loadingState,
    TalkResult? talkResult,
  }) = _ResultState;

  factory ResultState.initial({
    required final String userTalk,
  }) =>
      ResultState(
        userTalk: userTalk,
        loadingState: LoadingState.initial,
      );
}
