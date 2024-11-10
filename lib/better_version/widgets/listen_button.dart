import 'package:deepgram_app/better_version/bloc/better_version_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListnenButton extends StatelessWidget {
  const ListnenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BetterVersionBloc, BetterVersionState>(
      buildWhen: (previous, current) =>
          previous.speakingState != current.speakingState,
      builder: (context, state) {
        return FloatingActionButton(
          onPressed: () {
            if (state.notSpeaking) {
              context
                  .read<BetterVersionBloc>()
                  .add(const BetterVersionTextTransformed());
            } else if (state.speaking) {
              context
                  .read<BetterVersionBloc>()
                  .add(const BetterVersionTextTransformationInterrupted());
            }
          },
          child: switch (state.speakingState) {
            SpeakingState.initial => const Icon(CupertinoIcons.speaker),
            SpeakingState.notSpeaking => const Icon(CupertinoIcons.speaker),
            SpeakingState.preparing => const CircularProgressIndicator(),
            SpeakingState.speaking => const Icon(CupertinoIcons.speaker_2_fill),
          },
        );
      },
    );
  }
}
