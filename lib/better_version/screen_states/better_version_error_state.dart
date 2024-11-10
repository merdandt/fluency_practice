import 'package:deepgram_app/better_version/bloc/better_version_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BetterVersionErrorState extends StatelessWidget {
  const BetterVersionErrorState({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Oops!'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Something went wrong.',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              FilledButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Go Back'),
              ),
              const SizedBox(height: 16.0),
              FilledButton(
                onPressed: () => context.read<BetterVersionBloc>().add(
                      const BetterVersionLoaded(),
                    ),
                child: const Text('Reload'),
              ),
            ],
          ),
        ),
      ));
}
