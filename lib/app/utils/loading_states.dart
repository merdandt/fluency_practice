enum LoadingState { initial, loading, success, error }

extension LoadingStateX on LoadingState {
  bool get isLoading => this == LoadingState.loading;
  bool get isSuccess => this == LoadingState.success;
  bool get isError => this == LoadingState.error;
}

mixin LoadingStates {
  LoadingState get loadingState => LoadingState.initial;
}
