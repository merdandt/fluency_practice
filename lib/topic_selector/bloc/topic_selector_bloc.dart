import 'package:bloc/bloc.dart';
import 'package:deepgram_app/google_ai_repository/google_ai_repository.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app/app.dart';

part 'topic_selector_event.dart';
part 'topic_selector_state.dart';
part 'topic_selector_bloc.freezed.dart';

class TopicSelectorBloc extends Bloc<TopicSelectorEvent, TopicSelectorState> {
  TopicSelectorBloc({
    required final GenerativeAI generativeAI,
  })  : _generativeAI = generativeAI,
        super(TopicSelectorState.initial()) {
    on<TopicSelectorTopicTitleChanged>(_onTopicSelectorTopicTitleChanged);
    on<TopicSelectorTopicSubmitted>(_onTopicSelectorTopicSubmitted);
    on<TopicSelectorTopicsGennerated>(_onTopicSelectorTopicsGennerated);
    on<TopicSelectorTopicSelected>(_onTopicSelectorTopicSelected);
  }

  final GenerativeAI _generativeAI;

  void _onTopicSelectorTopicTitleChanged(
    final TopicSelectorTopicTitleChanged event,
    final Emitter<TopicSelectorState> emit,
  ) {
    final topicTitle = General.dirty(value: event.value);
    final isValid = Formz.validate([topicTitle]);
    emit(
      state.copyWith(
        isValid: isValid,
        topicTitle: topicTitle,
      ),
    );
  }

  void _onTopicSelectorTopicSubmitted(
    final TopicSelectorTopicSubmitted event,
    final Emitter<TopicSelectorState> emit,
  ) {
    emit(state.copyWith(selectedTopic: event.topic));
  }

  void _onTopicSelectorTopicsGennerated(
    final TopicSelectorTopicsGennerated event,
    final Emitter<TopicSelectorState> emit,
  ) async {
    emit(state.copyWith(loadingState: LoadingState.loading));
    try {
      final topics = await _generativeAI.generateTopics();
      emit(
        state.copyWith(
          loadingState: LoadingState.success,
          topics: topics,
        ),
      );
    } on Object catch (_) {
      emit(
        state.copyWith(
          loadingState: LoadingState.error,
        ),
      );
    }
  }

  void _onTopicSelectorTopicSelected(
    final TopicSelectorTopicSelected event,
    final Emitter<TopicSelectorState> emit,
  ) {
    add(TopicSelectorTopicTitleChanged(event.topic));
  }
}
