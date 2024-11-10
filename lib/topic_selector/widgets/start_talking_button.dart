import 'package:deepgram_app/topic_selector/bloc/topic_selector_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartTalkingButton extends StatelessWidget {
  const StartTalkingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopicSelectorBloc, TopicSelectorState>(
      buildWhen: (previous, current) =>
          previous.topicTitle != current.topicTitle,
      builder: (context, state) {
        final isValid = state.topicTitle.value.isNotEmpty;

        return Container(
          height: 80,
          padding:
              const EdgeInsets.only(bottom: 20, top: 5, left: 10, right: 10),
          width: double.infinity,
          decoration: const BoxDecoration(),
          child: FilledButton(
            onPressed: isValid
                ? () {
                    final bloc = context.read<TopicSelectorBloc>();
                    final hasTopic = bloc.state.topicTitle.value.isNotEmpty;
                    if (!hasTopic) return;
                    bloc.add(
                      TopicSelectorTopicSubmitted(bloc.state.topicTitle.value),
                    );
                  }
                : null,
            child: const Text('Start Talking', style: TextStyle(fontSize: 20)),
          ),
        );
      },
    );
  }
}
