import 'package:flutter/material.dart';

import '../../../../app/widgets/loader_widget.dart';
import '../bloc/result_bloc.dart';
import './../screen_states/screen_states.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(final BuildContext context) =>
      LoaderWidget<ResultBloc, ResultState>(
        errorWidget: (final _, final __) => const ResultErrorState(),
        loadingWidget: (final _, final __) => const ResultLoadingState(),
        successWidget: (final _, final state) => ResultLoadedState(
          talkResult: state.talkResult!,
        ),
        initialWidget: (final _, final __) => const ResultErrorState(),
      );
}
