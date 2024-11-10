// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talk_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TalkResult _$TalkResultFromJson(Map<String, dynamic> json) => TalkResult(
      grammaticalCorrectness: GrammaticalCorrectness.fromJson(
          json['grammatical_correctness'] as Map<String, dynamic>),
      vocabularyRichness: VocabularyRichness.fromJson(
          json['vocabulary_richness'] as Map<String, dynamic>),
      coherenceAndCohesion: CoherenceAndCohesion.fromJson(
          json['coherence_and_cohesion'] as Map<String, dynamic>),
      contentRelevance: ContentRelevance.fromJson(
          json['content_relevance'] as Map<String, dynamic>),
      errorAnalysis: ErrorAnalysis.fromJson(
          json['error_analysis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TalkResultToJson(TalkResult instance) =>
    <String, dynamic>{
      'grammatical_correctness': instance.grammaticalCorrectness,
      'vocabulary_richness': instance.vocabularyRichness,
      'coherence_and_cohesion': instance.coherenceAndCohesion,
      'content_relevance': instance.contentRelevance,
      'error_analysis': instance.errorAnalysis,
    };

GrammaticalCorrectness _$GrammaticalCorrectnessFromJson(
        Map<String, dynamic> json) =>
    GrammaticalCorrectness(
      errorRate: (json['error_rate'] as num).toInt(),
      accuracyPercentage: (json['accuracy_percentage'] as num).toInt(),
      errors: (json['errors'] as List<dynamic>)
          .map((e) => GrammaticalError.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$GrammaticalCorrectnessToJson(
        GrammaticalCorrectness instance) =>
    <String, dynamic>{
      'error_rate': instance.errorRate,
      'accuracy_percentage': instance.accuracyPercentage,
      'errors': instance.errors,
      'description': instance.description,
    };

GrammaticalError _$GrammaticalErrorFromJson(Map<String, dynamic> json) =>
    GrammaticalError(
      sentence: json['sentence'] as String,
      correction: json['correction'] as String,
    );

Map<String, dynamic> _$GrammaticalErrorToJson(GrammaticalError instance) =>
    <String, dynamic>{
      'sentence': instance.sentence,
      'correction': instance.correction,
    };

VocabularyRichness _$VocabularyRichnessFromJson(Map<String, dynamic> json) =>
    VocabularyRichness(
      lexicalDiversity: (json['lexical_diversity'] as num).toDouble(),
      advancedVocabularyUsage:
          (json['advanced_vocabulary_usage'] as num).toInt(),
      suggestions: json['suggestions'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$VocabularyRichnessToJson(VocabularyRichness instance) =>
    <String, dynamic>{
      'lexical_diversity': instance.lexicalDiversity,
      'advanced_vocabulary_usage': instance.advancedVocabularyUsage,
      'suggestions': instance.suggestions,
      'description': instance.description,
    };

CoherenceAndCohesion _$CoherenceAndCohesionFromJson(
        Map<String, dynamic> json) =>
    CoherenceAndCohesion(
      useOfConnectives: (json['use_of_connectives'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      logicalProgression: (json['logical_progression'] as num).toInt(),
      feedback: json['feedback'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$CoherenceAndCohesionToJson(
        CoherenceAndCohesion instance) =>
    <String, dynamic>{
      'use_of_connectives': instance.useOfConnectives,
      'logical_progression': instance.logicalProgression,
      'feedback': instance.feedback,
      'description': instance.description,
    };

ContentRelevance _$ContentRelevanceFromJson(Map<String, dynamic> json) =>
    ContentRelevance(
      topicAdherenceScore: (json['topic_adherence_score'] as num).toInt(),
      ideaDevelopment: json['idea_development'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ContentRelevanceToJson(ContentRelevance instance) =>
    <String, dynamic>{
      'topic_adherence_score': instance.topicAdherenceScore,
      'idea_development': instance.ideaDevelopment,
      'description': instance.description,
    };

ErrorAnalysis _$ErrorAnalysisFromJson(Map<String, dynamic> json) =>
    ErrorAnalysis(
      commonErrors: (json['common_errors'] as List<dynamic>)
          .map((e) => CommonError.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      mispronunciations: (json['mispronunciations'] as List<dynamic>)
          .map((e) => Mispronunciations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ErrorAnalysisToJson(ErrorAnalysis instance) =>
    <String, dynamic>{
      'common_errors': instance.commonErrors,
      'description': instance.description,
      'mispronunciations': instance.mispronunciations,
    };

CommonError _$CommonErrorFromJson(Map<String, dynamic> json) => CommonError(
      type: json['type'] as String,
      frequency: (json['frequency'] as num).toInt(),
    );

Map<String, dynamic> _$CommonErrorToJson(CommonError instance) =>
    <String, dynamic>{
      'type': instance.type,
      'frequency': instance.frequency,
    };

Mispronunciations _$MispronunciationsFromJson(Map<String, dynamic> json) =>
    Mispronunciations(
      word: json['word'] as String,
      soundedAs: json['sounded_as'] as String,
    );

Map<String, dynamic> _$MispronunciationsToJson(Mispronunciations instance) =>
    <String, dynamic>{
      'word': instance.word,
      'sounded_as': instance.soundedAs,
    };
