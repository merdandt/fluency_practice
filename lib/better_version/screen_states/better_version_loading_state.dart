import 'package:flutter/material.dart';

class BetterVersionLoadingState extends StatelessWidget {
  const BetterVersionLoadingState({super.key});

  @override
  Widget build(final BuildContext context) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
}
