import 'package:flutter/material.dart';

class ResultLoadingState extends StatelessWidget {
  const ResultLoadingState({super.key});

  @override
  Widget build(final BuildContext context) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
}
