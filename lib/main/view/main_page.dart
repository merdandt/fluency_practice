import '../../../main/main.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  static const String routeName = '/main_page';

  static Route route<T>() => MaterialPageRoute<T>(
        builder: (final _) => const MainPage(),
        settings: const RouteSettings(name: routeName),
      );

  @override
  Widget build(final BuildContext context) => const MainView();
}
