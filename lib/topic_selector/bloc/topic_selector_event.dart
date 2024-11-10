part of 'topic_selector_bloc.dart';

@freezed
class TopicSelectorEvent with _$TopicSelectorEvent {
  const factory TopicSelectorEvent.topicSelectorLoaded() = TopicSelectorLoaded;

  const factory TopicSelectorEvent.topicSelectorTopicTitleChanged(
      final String value) = TopicSelectorTopicTitleChanged;

  const factory TopicSelectorEvent.topicSelectorTopicSubmitted(
      final String topic) = TopicSelectorTopicSubmitted;

  const factory TopicSelectorEvent.topicSelectorTopicsGennerated() =
      TopicSelectorTopicsGennerated;

  const factory TopicSelectorEvent.topicSelectorTopicSelected(
      final String topic) = TopicSelectorTopicSelected;
}
