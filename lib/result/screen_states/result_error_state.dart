import 'package:flutter/material.dart';

class ResultErrorState extends StatelessWidget {
  const ResultErrorState({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Oops! Something went wrong!'),
          ),
        ),
      );
}
