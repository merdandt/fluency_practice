import 'package:deepgram_app/recording/recording.dart';
import 'package:deepgram_app/result/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordingListnerListner extends StatelessWidget {
  const RecordingListnerListner({required this.child, super.key});
  final Widget child;
  @override
  Widget build(final BuildContext context) =>
      BlocListener<RecordingBloc, RecordingState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (final context, final state) {
          if (state.status == RecordingStatus.recordingStopped) {
            Navigator.of(context).pushReplacement(
              ResultPage.route(
                userTalk: state.recordingTalk,
              ),
            );
          }
        },
        child: child,
      );
}
