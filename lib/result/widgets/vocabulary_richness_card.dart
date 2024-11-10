import 'package:deepgram_app/google_ai_repository/models/talk_result.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class VocabularyRichnessCard extends StatelessWidget {
  const VocabularyRichnessCard({super.key, required this.data});
  final VocabularyRichness data;

  Widget _buildCircularChart({
    required double percentage,
  }) {
    return SizedBox(
      height: 150,
      width: 200,
      child: SfCircularChart(
        annotations: <CircularChartAnnotation>[
          CircularChartAnnotation(
            widget: Text(
              '${(percentage * 100).toStringAsFixed(1)}%',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        series: <CircularSeries>[
          DoughnutSeries<_ChartData, String>(
            dataSource: [
              _ChartData('Used', percentage * 100),
              _ChartData('Remaining', 100 - (percentage * 100)),
            ],
            pointColorMapper: (_ChartData data, _) =>
                data.x == 'Used' ? Colors.blue : Colors.grey[300],
            xValueMapper: (_ChartData data, _) => data.x,
            yValueMapper: (_ChartData data, _) => data.y,
            innerRadius: '75%',
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestions(String suggestions) {
    return ListTile(
      leading: const Icon(Icons.lightbulb_outline, color: Colors.orange),
      title: const Text('Suggestions'),
      subtitle: Text(suggestions),
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
              const Text(
                'Lexical Diversity',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Row(
                children: [
                  _buildCircularChart(
                    percentage: data.lexicalDiversity,
                  ),
                  const Expanded(
                    child: Text(
                      'Lexical Diversity measures the ratio of unique words to total words.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Advanced Vocabulary Usage',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Row(
                children: [
                  _buildCircularChart(
                    percentage: data.advancedVocabularyUsage / 100,
                  ),
                  const Expanded(
                    child: Text(
                      'Advanced Vocabulary Usage indicates the percentage of advanced words used.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _buildSuggestions(data.suggestions),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper class for chart data
class _ChartData {
  _ChartData(this.x, this.y);
  final String x;
  final double y;
}
