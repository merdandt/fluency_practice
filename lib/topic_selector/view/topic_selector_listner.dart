import 'package:deepgram_app/recording/recording.dart';
import 'package:deepgram_app/topic_selector/bloc/topic_selector_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopicSelectorListnerListner extends StatelessWidget {
  const TopicSelectorListnerListner({required this.child, super.key});
  final Widget child;
  @override
  Widget build(final BuildContext context) =>
      BlocListener<TopicSelectorBloc, TopicSelectorState>(
        listenWhen: (final previous, final current) =>
            previous.selectedTopic != current.selectedTopic &&
            current.selectedTopic != null,
        listener: (final context, final state) {
          Navigator.of(context).pushReplacement(
            RecordingPage.route(topic: state.selectedTopic!),
          );
        },
        child: child,
      );
}
