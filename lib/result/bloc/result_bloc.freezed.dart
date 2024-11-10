// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resultLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resultLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resultLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultLoaded value) resultLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultLoaded value)? resultLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultLoaded value)? resultLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultEventCopyWith<$Res> {
  factory $ResultEventCopyWith(
          ResultEvent value, $Res Function(ResultEvent) then) =
      _$ResultEventCopyWithImpl<$Res, ResultEvent>;
}

/// @nodoc
class _$ResultEventCopyWithImpl<$Res, $Val extends ResultEvent>
    implements $ResultEventCopyWith<$Res> {
  _$ResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResultLoadedImplCopyWith<$Res> {
  factory _$$ResultLoadedImplCopyWith(
          _$ResultLoadedImpl value, $Res Function(_$ResultLoadedImpl) then) =
      __$$ResultLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultLoadedImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$ResultLoadedImpl>
    implements _$$ResultLoadedImplCopyWith<$Res> {
  __$$ResultLoadedImplCopyWithImpl(
      _$ResultLoadedImpl _value, $Res Function(_$ResultLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResultLoadedImpl implements ResultLoaded {
  const _$ResultLoadedImpl();

  @override
  String toString() {
    return 'ResultEvent.resultLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resultLoaded,
  }) {
    return resultLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resultLoaded,
  }) {
    return resultLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resultLoaded,
    required TResult orElse(),
  }) {
    if (resultLoaded != null) {
      return resultLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultLoaded value) resultLoaded,
  }) {
    return resultLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultLoaded value)? resultLoaded,
  }) {
    return resultLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultLoaded value)? resultLoaded,
    required TResult orElse(),
  }) {
    if (resultLoaded != null) {
      return resultLoaded(this);
    }
    return orElse();
  }
}

abstract class ResultLoaded implements ResultEvent {
  const factory ResultLoaded() = _$ResultLoadedImpl;
}

/// @nodoc
mixin _$ResultState {
  String get userTalk => throw _privateConstructorUsedError;
  LoadingState get loadingState => throw _privateConstructorUsedError;
  TalkResult? get talkResult => throw _privateConstructorUsedError;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultStateCopyWith<ResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<$Res> {
  factory $ResultStateCopyWith(
          ResultState value, $Res Function(ResultState) then) =
      _$ResultStateCopyWithImpl<$Res, ResultState>;
  @useResult
  $Res call(
      {String userTalk, LoadingState loadingState, TalkResult? talkResult});
}

/// @nodoc
class _$ResultStateCopyWithImpl<$Res, $Val extends ResultState>
    implements $ResultStateCopyWith<$Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTalk = null,
    Object? loadingState = null,
    Object? talkResult = freezed,
  }) {
    return _then(_value.copyWith(
      userTalk: null == userTalk
          ? _value.userTalk
          : userTalk // ignore: cast_nullable_to_non_nullable
              as String,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      talkResult: freezed == talkResult
          ? _value.talkResult
          : talkResult // ignore: cast_nullable_to_non_nullable
              as TalkResult?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultStateImplCopyWith<$Res>
    implements $ResultStateCopyWith<$Res> {
  factory _$$ResultStateImplCopyWith(
          _$ResultStateImpl value, $Res Function(_$ResultStateImpl) then) =
      __$$ResultStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userTalk, LoadingState loadingState, TalkResult? talkResult});
}

/// @nodoc
class __$$ResultStateImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultStateImpl>
    implements _$$ResultStateImplCopyWith<$Res> {
  __$$ResultStateImplCopyWithImpl(
      _$ResultStateImpl _value, $Res Function(_$ResultStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTalk = null,
    Object? loadingState = null,
    Object? talkResult = freezed,
  }) {
    return _then(_$ResultStateImpl(
      userTalk: null == userTalk
          ? _value.userTalk
          : userTalk // ignore: cast_nullable_to_non_nullable
              as String,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      talkResult: freezed == talkResult
          ? _value.talkResult
          : talkResult // ignore: cast_nullable_to_non_nullable
              as TalkResult?,
    ));
  }
}

/// @nodoc

class _$ResultStateImpl implements _ResultState {
  const _$ResultStateImpl(
      {required this.userTalk, required this.loadingState, this.talkResult});

  @override
  final String userTalk;
  @override
  final LoadingState loadingState;
  @override
  final TalkResult? talkResult;

  @override
  String toString() {
    return 'ResultState(userTalk: $userTalk, loadingState: $loadingState, talkResult: $talkResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultStateImpl &&
            (identical(other.userTalk, userTalk) ||
                other.userTalk == userTalk) &&
            (identical(other.loadingState, loadingState) ||
                other.loadingState == loadingState) &&
            (identical(other.talkResult, talkResult) ||
                other.talkResult == talkResult));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userTalk, loadingState, talkResult);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultStateImplCopyWith<_$ResultStateImpl> get copyWith =>
      __$$ResultStateImplCopyWithImpl<_$ResultStateImpl>(this, _$identity);
}

abstract class _ResultState implements ResultState {
  const factory _ResultState(
      {required final String userTalk,
      required final LoadingState loadingState,
      final TalkResult? talkResult}) = _$ResultStateImpl;

  @override
  String get userTalk;
  @override
  LoadingState get loadingState;
  @override
  TalkResult? get talkResult;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultStateImplCopyWith<_$ResultStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
