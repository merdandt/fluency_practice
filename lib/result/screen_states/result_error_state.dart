import 'package:deepgram_app/result/bloc/result_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultErrorState extends StatelessWidget {
  const ResultErrorState({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Oops! Something went wrong!'),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  context.read<ResultBloc>().add(const ResultLoaded());
                },
                child: const Text('Try again!'),
              ),
            ],
          ),
        ),
      );
}
