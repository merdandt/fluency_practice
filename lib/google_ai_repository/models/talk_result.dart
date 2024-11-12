import 'package:json_annotation/json_annotation.dart';

part 'talk_result.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TalkResult {
  TalkResult({
    this.grammaticalCorrectness,
    this.vocabularyRichness,
    this.coherenceAndCohesion,
    this.contentRelevance,
    this.errorAnalysis,
  });

  factory TalkResult.fromJson(Map<String, dynamic> json) =>
      _$TalkResultFromJson(json);

  final GrammaticalCorrectness? grammaticalCorrectness;
  final VocabularyRichness? vocabularyRichness;
  final CoherenceAndCohesion? coherenceAndCohesion;
  final ContentRelevance? contentRelevance;
  final ErrorAnalysis? errorAnalysis;

  Map<String, dynamic> toJson() => _$TalkResultToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class GrammaticalCorrectness {
  GrammaticalCorrectness({
    this.errorRate,
    this.accuracyPercentage,
    this.errors,
    this.description,
  });

  factory GrammaticalCorrectness.fromJson(Map<String, dynamic> json) =>
      _$GrammaticalCorrectnessFromJson(json);

  final int? errorRate;
  final int? accuracyPercentage;
  final List<GrammaticalError>? errors;
  final String? description;

  Map<String, dynamic> toJson() => _$GrammaticalCorrectnessToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class GrammaticalError {
  GrammaticalError({
    this.sentence,
    this.correction,
  });

  factory GrammaticalError.fromJson(Map<String, dynamic> json) =>
      _$GrammaticalErrorFromJson(json);

  final String? sentence;
  final String? correction;

  Map<String, dynamic> toJson() => _$GrammaticalErrorToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class VocabularyRichness {
  VocabularyRichness({
    this.lexicalDiversity,
    this.advancedVocabularyUsage,
    this.suggestions,
    this.description,
  });

  factory VocabularyRichness.fromJson(Map<String, dynamic> json) =>
      _$VocabularyRichnessFromJson(json);

  final double? lexicalDiversity;
  final int? advancedVocabularyUsage;
  final String? suggestions;
  final String? description;

  Map<String, dynamic> toJson() => _$VocabularyRichnessToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class CoherenceAndCohesion {
  CoherenceAndCohesion({
    this.useOfConnectives,
    this.logicalProgression,
    this.feedback,
    this.description,
  });

  factory CoherenceAndCohesion.fromJson(Map<String, dynamic> json) =>
      _$CoherenceAndCohesionFromJson(json);

  final List<String>? useOfConnectives;
  final int? logicalProgression;
  final String? feedback;
  final String? description;

  Map<String, dynamic> toJson() => _$CoherenceAndCohesionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class ContentRelevance {
  ContentRelevance({
    this.topicAdherenceScore,
    this.ideaDevelopment,
    this.description,
  });

  factory ContentRelevance.fromJson(Map<String, dynamic> json) =>
      _$ContentRelevanceFromJson(json);

  final int? topicAdherenceScore;
  final String? ideaDevelopment;
  final String? description;

  Map<String, dynamic> toJson() => _$ContentRelevanceToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class ErrorAnalysis {
  ErrorAnalysis({
    this.commonErrors,
    this.description,
    this.mispronunciations,
  });

  factory ErrorAnalysis.fromJson(Map<String, dynamic> json) =>
      _$ErrorAnalysisFromJson(json);

  final List<CommonError>? commonErrors;
  final String? description;
  final List<Mispronunciations>? mispronunciations;

  Map<String, dynamic> toJson() => _$ErrorAnalysisToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class CommonError {
  CommonError({
    this.type,
    this.frequency,
  });

  factory CommonError.fromJson(Map<String, dynamic> json) =>
      _$CommonErrorFromJson(json);

  final String? type;
  final int? frequency;

  Map<String, dynamic> toJson() => _$CommonErrorToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class Mispronunciations {
  Mispronunciations({
    this.word,
    this.soundedAs,
  });

  factory Mispronunciations.fromJson(Map<String, dynamic> json) =>
      _$MispronunciationsFromJson(json);

  final String? word;
  final String? soundedAs;

  Map<String, dynamic> toJson() => _$MispronunciationsToJson(this);
}
