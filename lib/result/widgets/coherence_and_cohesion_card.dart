import 'package:deepgram_app/google_ai_repository/models/talk_result.dart';
import 'package:deepgram_app/result/widgets/rating_bar.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class CoherenceAndCohesionCard extends StatelessWidget {
  const CoherenceAndCohesionCard({super.key, required this.data});

  final CoherenceAndCohesion data;

  Widget _buildConnectivesList(List<String> connectives) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Use of Connectives:', style: TextStyle(fontSize: 16)),
        Wrap(
          spacing: 8.0,
          children: connectives
              .map((word) => Chip(
                    label: Text(word),
                    backgroundColor: Colors.blue[100],
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildFeedback(String feedback) {
    return ListTile(
      leading: const Icon(Icons.feedback, color: Colors.blue),
      title: const Text('Feedback'),
      subtitle: Text(feedback),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ExpandChild(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              if (data.useOfConnectives?.isNotEmpty ?? false)
                _buildConnectivesList(data.useOfConnectives!),
              const SizedBox(height: 10),
              if (data.logicalProgression != null)
                RatingBar(
                  label: 'Logical Progression',
                  rating: data.logicalProgression!,
                ),
              const SizedBox(height: 10),
              if (data.feedback != null) _buildFeedback(data.feedback!),
            ],
          ),
        ),
      ),
    );
  }
}
