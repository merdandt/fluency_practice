import 'package:deepgram_app/better_version/widgets/listen_button.dart';
import 'package:deepgram_app/deepgram_repository/deepgramm_service.dart';
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
      bottomNavigationBar: SizedBox(
        width: 300,
        child: FilledButton(
          onPressed: () {
            DeepgrammService().getTTS(text: 'Hello World').then((value) {
              DeepgrammService().playTTS(value);
            });
          },
          child: const Text(
            'hello world',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      floatingActionButton: const ListnenButton());
}
