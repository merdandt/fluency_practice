import 'package:deepgram_app/google_ai_repository/models/talk_result.dart';
import 'package:deepgram_app/result/widgets/rating_bar.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class ContentRelevanceCard extends StatelessWidget {
  const ContentRelevanceCard({super.key, required this.data});

  final ContentRelevance data;

  Widget _buildIdeaDevelopment(String ideaDevelopment) {
    return ListTile(
      leading: const Icon(Icons.developer_mode, color: Colors.purple),
      title: const Text('Idea Development'),
      subtitle: Text(ideaDevelopment),
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
              if (data.topicAdherenceScore != null)
                RatingBar(
                  label: 'Topic Adherence Score',
                  rating: data.topicAdherenceScore!,
                ),
              const SizedBox(height: 10),
              if (data.ideaDevelopment != null)
                _buildIdeaDevelopment(data.ideaDevelopment!),
            ],
          ),
        ),
      ),
    );
  }
}
