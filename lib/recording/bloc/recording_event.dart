part of 'recording_bloc.dart';

@freezed
class RecordingEvent with _$RecordingEvent {
  const factory RecordingEvent.recordingLoaded() = RecordingLoaded;
  const factory RecordingEvent.recordingTalkChanged({
    required final DeepgramSttResult recordingTalk,
  }) = RecordingTalkChanged;

  const factory RecordingEvent.recordingUserReadyPressed() =
      RecordingUserReadyPressed;

  const factory RecordingEvent.recordingStarted() = RecordingStarted;

  const factory RecordingEvent.recordingStopped() = RecordingStopped;

  const factory RecordingEvent.recordingErrorOccured() = RecordingErrorOccured;

  const factory RecordingEvent.recordingStateCleared() = RecordingStateCleared;

  const factory RecordingEvent.recordingTalkInterrupted() =
      RecordingTalkInterrupted;
}
