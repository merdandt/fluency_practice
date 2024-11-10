import 'package:deepgram_app/google_ai_repository/google_ai_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../topic_selector/topic_selector.dart';
import 'package:flutter/material.dart';

class TopicSelectorPage extends StatelessWidget {
  const TopicSelectorPage({super.key});
  static const String routeName = '/topic_selector_page';

  static Route route<T>() => MaterialPageRoute<T>(
        builder: (final _) => const TopicSelectorPage(),
        settings: const RouteSettings(name: routeName),
      );

  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final context) => TopicSelectorBloc(
          generativeAI: GenerativeAI(),
        ),
        child: const TopicSelectorView(),
      );
}
