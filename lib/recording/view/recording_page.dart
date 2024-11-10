import 'package:deepgram_app/deepgram_repository/deepgramm_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../recording/recording.dart';
import 'package:flutter/material.dart';

class RecordingPage extends StatelessWidget {
  const RecordingPage({super.key, required this.topic});
  static const String routeName = '/recording_page';

  static Route route<T>({
    required final String topic,
  }) =>
      MaterialPageRoute<T>(
        builder: (final _) => RecordingPage(
          topic: topic,
        ),
        settings: const RouteSettings(name: routeName),
      );

  final String topic;

  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final context) => RecordingBloc(
          deepgram: DeepgrammService(),
          topic: topic,
        ),
        child: const RecordingView(),
      );
}
