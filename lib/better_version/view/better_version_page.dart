import 'package:deepgram_app/deepgram_repository/deepgramm_service.dart';
import 'package:deepgram_app/google_ai_repository/google_ai_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../better_version/better_version.dart';
import 'package:flutter/material.dart';

class BetterVersionPage extends StatelessWidget {
  const BetterVersionPage({super.key, required this.userTranscript});
  static const String routeName = '/better_version_page';

  static Route route<T>({
    required final String userTranscript,
  }) =>
      MaterialPageRoute<T>(
        builder: (final _) => BetterVersionPage(
          userTranscript: userTranscript,
        ),
        settings: const RouteSettings(name: routeName),
      );

  final String userTranscript;

  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final context) => BetterVersionBloc(
          userTranscript: userTranscript,
          deepgrammService: DeepgrammService(),
          generativeAI: GenerativeAI(),
        )..add(
            const BetterVersionLoaded(),
          ),
        child: const BetterVersionView(),
      );
}
