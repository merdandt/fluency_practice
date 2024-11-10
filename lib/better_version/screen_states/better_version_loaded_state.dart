import 'package:deepgram_app/better_version/widgets/listen_button.dart';
import 'package:flutter/material.dart';

class BetterVersionLoadedState extends StatelessWidget {
  const BetterVersionLoadedState({super.key, required this.betterVersion});

  final String betterVersion;

  @override
  Widget build(final BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Improved Version'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Text(
            betterVersion,
            style: const TextStyle(fontSize: 20.0),
          ),
        ),
      ),
      floatingActionButton: const ListnenButton());
}
