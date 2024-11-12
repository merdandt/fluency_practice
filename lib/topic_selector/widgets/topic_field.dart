import 'package:deepgram_app/topic_selector/bloc/topic_selector_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopicInputField extends StatefulWidget {
  const TopicInputField({super.key});

  @override
  State<TopicInputField> createState() => _TopicInputFieldState();
}

class _TopicInputFieldState extends State<TopicInputField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController()..addListener(_onChanger);
  }

  void _onChanger() {
    final bloc = context.read<TopicSelectorBloc>();
    bloc.add(TopicSelectorTopicTitleChanged(_controller.text));
  }

  @override
  Widget build(final BuildContext context) =>
      BlocListener<TopicSelectorBloc, TopicSelectorState>(
        listenWhen: (previous, current) =>
            previous.topicTitle != current.topicTitle,
        listener: (context, state) {
          _controller.text = state.topicTitle.value;
        },
        child: TextField(
          key: const Key('topic_input_field'),
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            hintText: 'What is leadership mean to you?',
            border: OutlineInputBorder(),
          ),
          controller: _controller,
        ),
      );

  @override
  void dispose() {
    super.dispose();
    _controller
      ..removeListener(_onChanger)
      ..dispose();
  }
}
