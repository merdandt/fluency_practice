import 'package:deepgram_app/google_ai_repository/models/talk_result.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class ErrorAnalysisCard extends StatelessWidget {
  const ErrorAnalysisCard({super.key, required this.data});
  final ErrorAnalysis data;

  Widget _buildCommonErrorsList(List<CommonError> errors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Common Errors:', style: TextStyle(fontSize: 16)),
        ...errors.map((error) {
          return ListTile(
            leading: const Icon(Icons.warning, color: Colors.red),
            title: Text(error.type ?? 'Unknown Error',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Frequency: ${error.frequency}',
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildMispronunciationsList(
      List<Mispronunciations> mispronunciations) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Mispronunciations:', style: TextStyle(fontSize: 16)),
        ...mispronunciations.map((word) {
          return ListTile(
            leading: const Icon(Icons.volume_up, color: Colors.orange),
            title: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Word: ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: word.word,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            subtitle: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Pronounced as: ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: word.soundedAs,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
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
              if (data.commonErrors?.isNotEmpty ?? false)
                _buildCommonErrorsList(data.commonErrors!),
              const SizedBox(height: 10),
              if (data.mispronunciations?.isNotEmpty ?? false)
                _buildMispronunciationsList(data.mispronunciations!),
            ],
          ),
        ),
      ),
    );
  }
}
