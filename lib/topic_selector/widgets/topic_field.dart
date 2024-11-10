import 'package:deepgram_app/topic_selector/bloc/topic_selector_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopicInputField extends StatelessWidget {
  const TopicInputField({super.key});

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<TopicSelectorBloc, TopicSelectorState>(
        buildWhen: (final previous, final current) =>
            previous.topicTitle != current.topicTitle,
        builder: (final context, final state) {
          final bloc = context.read<TopicSelectorBloc>();

          return TextField(
            key: const Key('topic_input_field'),
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              hintText: 'What is leadership mean to you?',
              border: OutlineInputBorder(),
            ),
            onChanged: (final holder) {
              bloc.add(TopicSelectorTopicTitleChanged(holder));
            },
            controller: TextEditingController(text: state.topicTitle.value),
          );
        },
      );
}
