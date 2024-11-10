part of 'recording_bloc.dart';

enum RecordingStatus {
  areYouReady,
  threeTwoOne,
  recording,
  recordingStopped,
  recordingError,
}

@freezed
class RecordingState with _$RecordingState {
  const factory RecordingState({
    required final String topic,
    required final RecordingStatus status,
    required final String recordingTalk,
    required final String recordingTalkChunk,
    required final int chunkNumbers,
  }) = _RecordingState;

  factory RecordingState.initial({
    required final String topic,
  }) =>
      RecordingState(
        topic: topic,
        chunkNumbers: 0,
        status: RecordingStatus.areYouReady,
        recordingTalk: '',
        recordingTalkChunk: '',
      );
}
