import 'package:deepgram_app/recording/bloc/recording_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordingError extends StatelessWidget {
  const RecordingError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: OutlinedButton(
        onPressed: () {
          context.read<RecordingBloc>().add(
                const RecordingEvent.recordingStateCleared(),
              );
          Navigator.of(context).pop();
        },
        child: const Text('Oops! Try again'),
      )),
    );
  }
}
