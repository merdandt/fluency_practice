import 'dart:math';

import 'package:deepgram_app/recording/bloc/recording_bloc.dart';
import 'package:deepgram_app/recording/widgets/record_button/record_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordingScreen extends StatefulWidget {
  const RecordingScreen({super.key});

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen>
    with SingleTickerProviderStateMixin {
  String _fullText = '';
  String _displayedText = '';
  late AnimationController _controller;
  Animation<int>? _textAnimation;

  @override
  void initState() {
    super.initState();
    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
    );
  }

  @override
  void dispose() {
    // Dispose of the AnimationController to free up resources
    _controller.dispose();
    super.dispose();
  }

  void _startTypingAnimation(String newText) {
    int start = _displayedText.length;
    int end = newText.length;

    // If the new text is shorter, reset the displayed text
    if (start > end) {
      _displayedText = newText;
      start = end;
    }

    // If there's no new text, do nothing
    if (start == end) {
      return;
    }

    // Stop and reset the controller if it's already running
    _controller.stop();
    _controller.reset();

    // Set the duration based on the number of new characters
    int charCount = end - start;
    _controller.duration = Duration(milliseconds: charCount * 50);

    // Define the animation from the current length to the new length
    _textAnimation = IntTween(begin: start, end: end).animate(_controller)
      ..addListener(() {
        setState(() {
          // Ensure the current value does not exceed newText.length
          int currentLength = min(_textAnimation!.value, newText.length);
          _displayedText = newText.substring(0, currentLength);
        });
      });

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.read<RecordingBloc>().add(
                  const RecordingTalkInterrupted(),
                );
            Navigator.of(context).pop();
          },
        ),
        title: const _CountDownTitle(),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: BlocListener<RecordingBloc, RecordingState>(
                  listenWhen: (previous, current) =>
                      previous.recordingTalkChunk != current.recordingTalkChunk,
                  listener: (context, state) {
                    String newText = state.recordingTalkChunk;
                    if (newText != _fullText) {
                      _fullText = newText;
                      _startTypingAnimation(_fullText);
                    }
                  },
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      _displayedText,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const RecordButton(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class _CountDownTitle extends StatelessWidget {
  const _CountDownTitle();

  String _format(Duration d) => d.toString().split('.').first.substring(2);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Duration>(
      duration: const Duration(seconds: 60),
      tween: Tween(
        begin: const Duration(seconds: 60),
        end: Duration.zero,
      ),
      onEnd: () {
        context.read<RecordingBloc>().add(const RecordingStopped());
      },
      builder: (BuildContext context, Duration value, Widget? child) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Text(_format(value),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
        );
      },
    );
  }
}
