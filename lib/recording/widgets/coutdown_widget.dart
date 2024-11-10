import 'package:flutter/material.dart';

/// A widget that fiers a countdown timer for [secondsToAwait] seconds and then
/// shows the [actionWidget].
///
/// The [style] is optional and defaults to [Theme.of(context).textTheme.bodyLarge].
class CountDownWidget extends StatelessWidget {
  const CountDownWidget({
    super.key,
    required this.secondsToAwait,
    required this.onEnd,
    this.textStyle,
  });

  final int secondsToAwait;

  final TextStyle? textStyle;

  /// This callback will be called when user pressed on [actionWidget].
  ///
  /// It will fire the timer again
  final VoidCallback onEnd;

  String _format(Duration d) => d.toString().split('.').first.padLeft(8, "0");

  @override
  Widget build(BuildContext context) {
    final style = textStyle ?? Theme.of(context).textTheme.bodyLarge;
    return TweenAnimationBuilder<Duration>(
      duration: Duration(seconds: secondsToAwait),
      tween: Tween(
        begin: Duration(seconds: secondsToAwait),
        end: Duration.zero,
      ),
      onEnd: onEnd,
      builder: (BuildContext context, Duration value, Widget? child) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            _format(value),
            textAlign: TextAlign.center,
            style: style,
          ),
        );
      },
    );
  }
}
