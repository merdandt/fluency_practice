import 'package:deepgram_app/google_ai_repository/google_ai_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../result/result.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.userTalk});
  static const String routeName = '/result_page';

  static Route route<T>({
    required final String userTalk,
  }) =>
      MaterialPageRoute<T>(
        builder: (final _) => ResultPage(
          userTalk: userTalk,
        ),
        settings: const RouteSettings(name: routeName),
      );

  final String userTalk;

  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final context) => ResultBloc(
          userTalk: userTalk,
          generativeAI: GenerativeAI(),
        )..add(const ResultLoaded()),
        child: const ResultView(),
      );
}
