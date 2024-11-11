import 'package:deepgram_app/main/instructions/view/instructions_page.dart';
import 'package:deepgram_app/topic_selector/topic_selector.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 300,
                  height: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Topic selector page
                const Text(
                    'Google:${const String.fromEnvironment('GOOGLE_AI_API_KEY')}'),
                const Text(
                    'Deepgram: ${const String.fromEnvironment('DEEPGRAM_API_KEY')}'),
                const SizedBox(
                  height: 20,
                ),
                //
                SizedBox(
                  width: 300,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.of(context).push(InstructionsPage.route());
                    },
                    child: const Text(
                      'View Instructions',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.of(context).push(TopicSelectorPage.route());
                    },
                    child: const Text('Start Training',
                        style: TextStyle(fontSize: 18)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
