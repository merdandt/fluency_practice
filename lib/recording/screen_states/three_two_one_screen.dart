import 'package:deepgram_app/recording/bloc/recording_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThreeTwoOneCountdown extends StatefulWidget {
  const ThreeTwoOneCountdown({super.key});

  @override
  State<ThreeTwoOneCountdown> createState() => _ThreeTwoOneCountdownState();
}

class _ThreeTwoOneCountdownState extends State<ThreeTwoOneCountdown> {
  int _currentNumber = 3;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() async {
    final bloc = context.read<RecordingBloc>();
    while (_currentNumber > 0) {
      setState(() {}); // Update the UI with the current number
      await Future.delayed(const Duration(seconds: 1));
      _currentNumber--;
    }
    // Countdown finished, trigger the RecordingStarted event
    bloc.add(const RecordingStarted());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, animation) {
            // Use a scaling transition for the countdown
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: Text(
            _currentNumber > 0 ? '$_currentNumber' : '',
            key: ValueKey<int>(_currentNumber),
            style: const TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
