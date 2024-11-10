part of 'topic_selector_bloc.dart';

@freezed
class TopicSelectorState with _$TopicSelectorState {
  const factory TopicSelectorState({
    required final String value,
    required final General topicTitle,
    required final FormzSubmissionStatus status,
    required final bool isValid,
    required final LoadingState loadingState,
    required final List<String> topics,
    String? selectedTopic,
  }) = _TopicSelectorState;

  factory TopicSelectorState.initial() => const TopicSelectorState(
        value: '',
        loadingState: LoadingState.initial,
        topicTitle: General.pure(),
        status: FormzSubmissionStatus.initial,
        isValid: false,
        topics: [],
      );
}
