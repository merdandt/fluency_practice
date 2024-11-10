import 'package:deepgram_app/topic_selector/bloc/topic_selector_bloc.dart';
import 'package:deepgram_app/topic_selector/view/topic_selector_listner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/widgets.dart';

class TopicSelectorView extends StatelessWidget {
  const TopicSelectorView({super.key});

  @override
  Widget build(final BuildContext context) => TopicSelectorListnerListner(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Select a Topic'),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Write the topic you want to disscuss'),
                  const SizedBox(
                    height: 20,
                  ),
                  const TopicInputField(),
                  const SizedBox(height: 20),
                  const Text(' - OR - ', style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 10),
                  const Text('Select from Generated Topics'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<TopicSelectorBloc>().add(
                            const TopicSelectorTopicsGennerated(),
                          );
                    },
                    child: const Text('Generate Topics'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Expanded(child: TopicsWidget()),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const StartTalkingButton(),
        ),
      );
}
