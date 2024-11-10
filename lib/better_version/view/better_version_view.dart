import 'package:flutter/material.dart';

import '../../../../app/widgets/loader_widget.dart';
import '../bloc/better_version_bloc.dart';
import './../screen_states/screen_states.dart';

class BetterVersionView extends StatelessWidget {
  const BetterVersionView({super.key});

  @override
  Widget build(final BuildContext context) =>
      LoaderWidget<BetterVersionBloc, BetterVersionState>(
        errorWidget: (final _, final __) => const BetterVersionErrorState(),
        loadingWidget: (final _, final __) => const BetterVersionLoadingState(),
        successWidget: (final _, final state) => BetterVersionLoadedState(
          betterVersion: state.betterVersion!,
        ),
        initialWidget: (final _, final __) => const BetterVersionErrorState(),
      );
}
