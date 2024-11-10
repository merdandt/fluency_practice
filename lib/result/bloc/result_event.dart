part of 'result_bloc.dart';

@freezed
class ResultEvent with _$ResultEvent {
  const factory ResultEvent.resultLoaded() = ResultLoaded;
  
}
