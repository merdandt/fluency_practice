import 'package:deepgram_app/better_version/view/better_version_page.dart';
import 'package:deepgram_app/result/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewBetterVersionButton extends StatelessWidget {
  const ViewBetterVersionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.only(bottom: 20, top: 5, left: 10, right: 10),
      width: double.infinity,
      decoration: const BoxDecoration(),
      child: FilledButton(
        onPressed: () {
          Navigator.of(context).push(
            BetterVersionPage.route(
              userTranscript: context.read<ResultBloc>().state.userTalk,
            ),
          );
        },
        child: const Text(
          'View Better Version',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
