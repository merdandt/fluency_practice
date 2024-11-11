import 'package:bloc/bloc.dart';
import 'package:deepgram_app/app/utils/loading_states.dart';
import 'package:deepgram_app/deepgram_repository/deepgramm_service.dart';
import 'package:deepgram_app/google_ai_repository/google_ai_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'better_version_event.dart';
part 'better_version_state.dart';
part 'better_version_bloc.freezed.dart';

class BetterVersionBloc extends Bloc<BetterVersionEvent, BetterVersionState> {
  BetterVersionBloc({
    required final GenerativeAI generativeAI,
    required final DeepgrammService deepgrammService,
    required final String userTranscript,
  })  : _deepgrammService = deepgrammService,
        _generativeAI = generativeAI,
        super(BetterVersionState.initial(userTranscript: userTranscript)) {
    on<BetterVersionLoaded>(_onBetterVersionLoaded);
    on<BetterVersionTextTransformed>(_onBetterVersionTextTransformed);
    on<BetterVersionTextTransformationInterrupted>(
      _onBetterVersionTextTransformationInterrupted,
    );
  }

  final GenerativeAI _generativeAI;
  final DeepgrammService _deepgrammService;

  void _onBetterVersionLoaded(
    final BetterVersionLoaded event,
    final Emitter<BetterVersionState> emit,
  ) async {
    if (state.userTranscript.isEmpty) return;

    emit(state.copyWith(
      loadingState: LoadingState.loading,
    ));
    try {
      final betterVersion = await _generativeAI.generateImprovedText(
        state.userTranscript,
      );
      emit(
        state.copyWith(
          loadingState: LoadingState.success,
          betterVersion: betterVersion,
        ),
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(
        state.copyWith(
          loadingState: LoadingState.error,
        ),
      );
    }
  }

  Future<void> _onBetterVersionTextTransformed(
    final BetterVersionTextTransformed event,
    final Emitter<BetterVersionState> emit,
  ) async {
    if (state.betterVersion == null) return;
    emit(
      state.copyWith(
        speakingState: SpeakingState.preparing,
      ),
    );
    try {
      final tts = await _deepgrammService.getTTS(
        text: state.betterVersion!,
      );
      emit(
        state.copyWith(
          speakingState: SpeakingState.speaking,
        ),
      );
      await _deepgrammService.playTTS(tts).then((final v_) => add(
            const BetterVersionTextTransformationInterrupted(),
          ));
    } catch (e) {
      if (kDebugMode) print(e);
      emit(
        state.copyWith(
          speakingState: SpeakingState.speaking,
        ),
      );
    }
  }

  void _onBetterVersionTextTransformationInterrupted(
    final BetterVersionTextTransformationInterrupted event,
    final Emitter<BetterVersionState> emit,
  ) async {
    await _deepgrammService.stopPlayer();
    emit(
      state.copyWith(
        speakingState: SpeakingState.notSpeaking,
      ),
    );
  }
}
