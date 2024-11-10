// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:deepgram_app/app/app.dart';
import 'package:deepgram_app/topic_selector/bloc/topic_selector_bloc.dart';

class TopicsWidget extends StatelessWidget {
  const TopicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopicSelectorBloc, TopicSelectorState>(
        builder: (context, state) => switch (state.loadingState) {
              LoadingState.initial => const SizedBox(),
              LoadingState.loading =>
                const Center(child: CircularProgressIndicator()),
              LoadingState.success => _TopicsList(
                  topics: state.topics,
                  selectedTopic: state.topicTitle.value,
                ),
              LoadingState.error => const Text('Error'),
            });
  }
}

class _TopicsList extends StatelessWidget {
  const _TopicsList({
    required this.topics,
    this.selectedTopic,
  });
  final List<String> topics;
  final String? selectedTopic;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topics.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          leading:
              selectedTopic == topics[index] ? const Icon(Icons.check) : null,
          onTap: () {
            context.read<TopicSelectorBloc>().add(
                  TopicSelectorTopicSelected(topics[index]),
                );
          },
          title: Text(topics[index]),
        ),
      ),
    );
  }
}
