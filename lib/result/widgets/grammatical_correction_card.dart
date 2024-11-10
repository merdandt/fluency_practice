import 'package:deepgram_app/google_ai_repository/models/talk_result.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class GrammaticalCorrectnessCard extends StatelessWidget {
  const GrammaticalCorrectnessCard({super.key, required this.data});
  final GrammaticalCorrectness data;

  // Custom Widgets for various UI components
  Widget _buildLinearProgressIndicator(
      {required String label,
      required double percentage,
      required Color color}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: ${(percentage * 100).toStringAsFixed(1)}%',
            style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: percentage,
          color: color,
          backgroundColor: Colors.grey[300],
        ),
      ],
    );
  }

  Widget _buildErrorList(BuildContext context, List<GrammaticalError> errors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: errors.map((error) {
        return Card(
          color: Colors.red[50],
          child: ListTile(
            leading: const Icon(Icons.error, color: Colors.red),
            title:
                const Text('Incorrect:', style: TextStyle(color: Colors.red)),
            subtitle: Text(error.sentence),
            trailing: const Icon(Icons.arrow_forward, color: Colors.grey),
            onTap: () {
              // Show corrected sentence
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Correction'),
                    content: Text(error.correction),
                    actions: [
                      TextButton(
                        child: const Text('Close',
                            style: TextStyle(color: Colors.blue)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                },
              );
            },
          ),
        );
      }).toList(),
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
              _buildLinearProgressIndicator(
                label: 'Accuracy Percentage',
                percentage: data.accuracyPercentage / 100,
                color: Colors.green,
              ),
              const SizedBox(height: 10),
              _buildLinearProgressIndicator(
                label: 'Error Rate',
                percentage: data.errorRate / 100,
                color: Colors.red,
              ),
              const SizedBox(height: 10),
              _buildErrorList(context, data.errors),
            ],
          ),
        ),
      ),
    );
  }
}
