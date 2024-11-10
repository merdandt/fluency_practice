import 'package:deepgram_app/recording/bloc/recording_bloc.dart';
import 'package:deepgram_app/recording/widgets/record_button/record_wave.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordButton extends StatefulWidget {
  const RecordButton({super.key});

  @override
  State<RecordButton> createState() => _RecordButtonState();
}

class _RecordButtonState extends State<RecordButton> {
  final duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.5;

    return Stack(
      alignment: Alignment.center,
      children: [
        RecordWaves(
          duration: duration,
          size: width,
        ),
        AnimatedContainer(
          width: width,
          height: width,
          duration: duration,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(width)),
          child: tapButton(width),
        ),
      ],
    );
  }

  Widget tapButton(double size) => Center(
        child: GestureDetector(
          onTap: () => context.read<RecordingBloc>().add(
                const RecordingEvent.recordingStopped(),
              ),
          child: AnimatedContainer(
            duration: duration,
            width: size * 0.65 - 30,
            height: size * 0.65 - 30,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
                width: 4,
              ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.4),
                  blurRadius: 17.5,
                  spreadRadius: 7.5,
                )
              ],
            ),
            child: const Center(
              child: Text('STOP'),
            ),
          ),
        ),
      );
}
