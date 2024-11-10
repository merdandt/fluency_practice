// import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:deepgram_app/google_ai_repository/google_ai_repository.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app/app.dart';

part 'result_event.dart';
part 'result_state.dart';
part 'result_bloc.freezed.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc({
    required final String userTalk,
    required final GenerativeAI generativeAI,
  })  : _generativeAI = generativeAI,
        super(ResultState.initial(
          userTalk: userTalk,
        )) {
    on<ResultLoaded>(_onResultLoaded);
  }

  final GenerativeAI _generativeAI;

  void _onResultLoaded(ResultLoaded event, Emitter<ResultState> emit) async {
    try {
      if (state.userTalk.isEmpty) return;
      emit(state.copyWith(loadingState: LoadingState.loading));
      final result = await _generativeAI.analizeResult(state.userTalk);

      emit(
        state.copyWith(
          loadingState: LoadingState.success,
          talkResult: result,
        ),
      );
    } on FormatException catch (e) {
      if (kDebugMode) {
        print('FormatException: $e');
      }
    } catch (e) {
      emit(state.copyWith(loadingState: LoadingState.error));
    }
  }
}
