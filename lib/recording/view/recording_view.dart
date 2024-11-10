import 'package:deepgram_app/recording/screen_states/screen_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../recording.dart';

class RecordingView extends StatelessWidget {
  const RecordingView({super.key});

  @override
  Widget build(final BuildContext context) => RecordingListnerListner(
        child: BlocBuilder<RecordingBloc, RecordingState>(
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) => switch (state.status) {
            RecordingStatus.areYouReady => const AreYouReady(),
            RecordingStatus.threeTwoOne => const ThreeTwoOneCountdown(),
            RecordingStatus.recording => const RecordingScreen(),
            RecordingStatus.recordingStopped => const SizedBox(),
            RecordingStatus.recordingError => const RecordingError(),
          },
        ),
      );
}
