part of 'better_version_bloc.dart';

@freezed
class BetterVersionEvent with _$BetterVersionEvent {
  const factory BetterVersionEvent.betterVersionLoaded() = BetterVersionLoaded;
  const factory BetterVersionEvent.betterVersionTextTransformed() =
      BetterVersionTextTransformed;
  const factory BetterVersionEvent.betterVersionTextTransformationInterrupted() =
      BetterVersionTextTransformationInterrupted;
}
