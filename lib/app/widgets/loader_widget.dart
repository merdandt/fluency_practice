import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app.dart';

class LoaderWidget<B extends StateStreamable<S>, S extends LoadingStates>
    extends StatelessWidget {
  const LoaderWidget({
    required this.errorWidget,
    required this.loadingWidget,
    required this.successWidget,
    this.initialWidget,
    super.key,
  });
  final Widget Function(BuildContext context, S state)? initialWidget;
  final Widget Function(BuildContext context, S state) errorWidget;
  final Widget Function(BuildContext context, S state) loadingWidget;
  final Widget Function(BuildContext context, S state) successWidget;

  @override
  Widget build(final BuildContext context) => BlocBuilder<B, S>(
        builder: (final context, final state) => switch (state.loadingState) {
          LoadingState.initial => (initialWidget ??
              (final _, final __) =>
                  loadingWidget(context, state))(context, state),
          LoadingState.loading => loadingWidget(context, state),
          LoadingState.error => errorWidget(context, state),
          LoadingState.success => successWidget(context, state),
        },
        buildWhen: (final previous, final current) =>
            previous.loadingState != current.loadingState,
      );
}
