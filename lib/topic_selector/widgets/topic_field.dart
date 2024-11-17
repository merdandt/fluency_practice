import 'package:deepgram_app/app/utils/text_fields_kit.dart';
import 'package:deepgram_app/topic_selector/bloc/topic_selector_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopicInputField extends StatelessWidget {
  const TopicInputField({super.key});

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<TopicSelectorBloc, TopicSelectorState>(
        buildWhen: (previous, current) =>
            previous.topicTitle != current.topicTitle,
        builder: (context, state) {
          final bloc = context.read<TopicSelectorBloc>();

          return SizedBox(
            width: double.infinity,
            height: 50,
            child: BaseInputTextField(
              textInputAction: TextInputAction.next,
              initialValue: state.topicTitle.value,
              onChanged: (final topicTitle) {
                bloc.add(TopicSelectorTopicTitleChanged(topicTitle));
              },
            ),
          );
        },
      );
}
