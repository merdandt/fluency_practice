import 'package:deepgram_app/main/instructions/view/instructions_view.dart';

import 'package:flutter/material.dart';

class InstructionsPage extends StatelessWidget {
  const InstructionsPage({super.key});
  static const String routeName = '/instructions_page';

  static Route route<T>() => MaterialPageRoute<T>(
        builder: (final _) => const InstructionsPage(),
        settings: const RouteSettings(name: routeName),
      );

  @override
  Widget build(final BuildContext context) => const InstructionsView();
}
