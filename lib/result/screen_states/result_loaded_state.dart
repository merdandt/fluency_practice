import 'package:flutter/material.dart';
import '../../google_ai_repository/google_ai_repository.dart';
import '../widgets/widgets.dart';

class ResultLoadedState extends StatelessWidget {
  const ResultLoadedState({super.key, required this.talkResult});

  final TalkResult talkResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speech Analysis Result'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Grammatical Correctness Section
            SectionHeader(
              title: 'Grammatical Correctness',
              description: talkResult.grammaticalCorrectness?.description ?? '',
            ),
            if (talkResult.grammaticalCorrectness != null)
              GrammaticalCorrectnessCard(
                data: talkResult.grammaticalCorrectness!,
              ),

            // Vocabulary Richness Section
            SectionHeader(
              title: 'Vocabulary Richness',
              description: talkResult.vocabularyRichness?.description ?? '',
            ),
            if (talkResult.vocabularyRichness != null)
              VocabularyRichnessCard(data: talkResult.vocabularyRichness!),

            // Coherence and Cohesion Section
            SectionHeader(
              title: 'Coherence and Cohesion',
              description: talkResult.coherenceAndCohesion?.description ?? '',
            ),
            if (talkResult.coherenceAndCohesion != null)
              CoherenceAndCohesionCard(data: talkResult.coherenceAndCohesion!),

            // Content Relevance Section
            SectionHeader(
              title: 'Content Relevance',
              description: talkResult.contentRelevance?.description ?? '',
            ),
            if (talkResult.contentRelevance != null)
              ContentRelevanceCard(data: talkResult.contentRelevance!),

            // Error Analysis Section
            SectionHeader(
              title: 'Error Analysis',
              description: talkResult.errorAnalysis?.description ?? '',
            ),
            if (talkResult.errorAnalysis != null)
              ErrorAnalysisCard(data: talkResult.errorAnalysis!),
          ],
        ),
      ),
      bottomNavigationBar: const ViewBetterVersionButton(),
    );
  }
}
