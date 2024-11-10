// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recording_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecordingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recordingLoaded,
    required TResult Function(DeepgramSttResult recordingTalk)
        recordingTalkChanged,
    required TResult Function() recordingUserReadyPressed,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStopped,
    required TResult Function() recordingErrorOccured,
    required TResult Function() recordingStateCleared,
    required TResult Function() recordingTalkInterrupted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recordingLoaded,
    TResult? Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult? Function()? recordingUserReadyPressed,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStopped,
    TResult? Function()? recordingErrorOccured,
    TResult? Function()? recordingStateCleared,
    TResult? Function()? recordingTalkInterrupted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recordingLoaded,
    TResult Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult Function()? recordingUserReadyPressed,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStopped,
    TResult Function()? recordingErrorOccured,
    TResult Function()? recordingStateCleared,
    TResult Function()? recordingTalkInterrupted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordingLoaded value) recordingLoaded,
    required TResult Function(RecordingTalkChanged value) recordingTalkChanged,
    required TResult Function(RecordingUserReadyPressed value)
        recordingUserReadyPressed,
    required TResult Function(RecordingStarted value) recordingStarted,
    required TResult Function(RecordingStopped value) recordingStopped,
    required TResult Function(RecordingErrorOccured value)
        recordingErrorOccured,
    required TResult Function(RecordingStateCleared value)
        recordingStateCleared,
    required TResult Function(RecordingTalkInterrupted value)
        recordingTalkInterrupted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordingLoaded value)? recordingLoaded,
    TResult? Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult? Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult? Function(RecordingStarted value)? recordingStarted,
    TResult? Function(RecordingStopped value)? recordingStopped,
    TResult? Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult? Function(RecordingStateCleared value)? recordingStateCleared,
    TResult? Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordingLoaded value)? recordingLoaded,
    TResult Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult Function(RecordingStarted value)? recordingStarted,
    TResult Function(RecordingStopped value)? recordingStopped,
    TResult Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult Function(RecordingStateCleared value)? recordingStateCleared,
    TResult Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingEventCopyWith<$Res> {
  factory $RecordingEventCopyWith(
          RecordingEvent value, $Res Function(RecordingEvent) then) =
      _$RecordingEventCopyWithImpl<$Res, RecordingEvent>;
}

/// @nodoc
class _$RecordingEventCopyWithImpl<$Res, $Val extends RecordingEvent>
    implements $RecordingEventCopyWith<$Res> {
  _$RecordingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecordingLoadedImplCopyWith<$Res> {
  factory _$$RecordingLoadedImplCopyWith(_$RecordingLoadedImpl value,
          $Res Function(_$RecordingLoadedImpl) then) =
      __$$RecordingLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingLoadedImplCopyWithImpl<$Res>
    extends _$RecordingEventCopyWithImpl<$Res, _$RecordingLoadedImpl>
    implements _$$RecordingLoadedImplCopyWith<$Res> {
  __$$RecordingLoadedImplCopyWithImpl(
      _$RecordingLoadedImpl _value, $Res Function(_$RecordingLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordingLoadedImpl
    with DiagnosticableTreeMixin
    implements RecordingLoaded {
  const _$RecordingLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordingEvent.recordingLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecordingEvent.recordingLoaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordingLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recordingLoaded,
    required TResult Function(DeepgramSttResult recordingTalk)
        recordingTalkChanged,
    required TResult Function() recordingUserReadyPressed,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStopped,
    required TResult Function() recordingErrorOccured,
    required TResult Function() recordingStateCleared,
    required TResult Function() recordingTalkInterrupted,
  }) {
    return recordingLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recordingLoaded,
    TResult? Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult? Function()? recordingUserReadyPressed,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStopped,
    TResult? Function()? recordingErrorOccured,
    TResult? Function()? recordingStateCleared,
    TResult? Function()? recordingTalkInterrupted,
  }) {
    return recordingLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recordingLoaded,
    TResult Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult Function()? recordingUserReadyPressed,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStopped,
    TResult Function()? recordingErrorOccured,
    TResult Function()? recordingStateCleared,
    TResult Function()? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingLoaded != null) {
      return recordingLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordingLoaded value) recordingLoaded,
    required TResult Function(RecordingTalkChanged value) recordingTalkChanged,
    required TResult Function(RecordingUserReadyPressed value)
        recordingUserReadyPressed,
    required TResult Function(RecordingStarted value) recordingStarted,
    required TResult Function(RecordingStopped value) recordingStopped,
    required TResult Function(RecordingErrorOccured value)
        recordingErrorOccured,
    required TResult Function(RecordingStateCleared value)
        recordingStateCleared,
    required TResult Function(RecordingTalkInterrupted value)
        recordingTalkInterrupted,
  }) {
    return recordingLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordingLoaded value)? recordingLoaded,
    TResult? Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult? Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult? Function(RecordingStarted value)? recordingStarted,
    TResult? Function(RecordingStopped value)? recordingStopped,
    TResult? Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult? Function(RecordingStateCleared value)? recordingStateCleared,
    TResult? Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
  }) {
    return recordingLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordingLoaded value)? recordingLoaded,
    TResult Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult Function(RecordingStarted value)? recordingStarted,
    TResult Function(RecordingStopped value)? recordingStopped,
    TResult Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult Function(RecordingStateCleared value)? recordingStateCleared,
    TResult Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingLoaded != null) {
      return recordingLoaded(this);
    }
    return orElse();
  }
}

abstract class RecordingLoaded implements RecordingEvent {
  const factory RecordingLoaded() = _$RecordingLoadedImpl;
}

/// @nodoc
abstract class _$$RecordingTalkChangedImplCopyWith<$Res> {
  factory _$$RecordingTalkChangedImplCopyWith(_$RecordingTalkChangedImpl value,
          $Res Function(_$RecordingTalkChangedImpl) then) =
      __$$RecordingTalkChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeepgramSttResult recordingTalk});
}

/// @nodoc
class __$$RecordingTalkChangedImplCopyWithImpl<$Res>
    extends _$RecordingEventCopyWithImpl<$Res, _$RecordingTalkChangedImpl>
    implements _$$RecordingTalkChangedImplCopyWith<$Res> {
  __$$RecordingTalkChangedImplCopyWithImpl(_$RecordingTalkChangedImpl _value,
      $Res Function(_$RecordingTalkChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordingTalk = null,
  }) {
    return _then(_$RecordingTalkChangedImpl(
      recordingTalk: null == recordingTalk
          ? _value.recordingTalk
          : recordingTalk // ignore: cast_nullable_to_non_nullable
              as DeepgramSttResult,
    ));
  }
}

/// @nodoc

class _$RecordingTalkChangedImpl
    with DiagnosticableTreeMixin
    implements RecordingTalkChanged {
  const _$RecordingTalkChangedImpl({required this.recordingTalk});

  @override
  final DeepgramSttResult recordingTalk;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordingEvent.recordingTalkChanged(recordingTalk: $recordingTalk)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordingEvent.recordingTalkChanged'))
      ..add(DiagnosticsProperty('recordingTalk', recordingTalk));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingTalkChangedImpl &&
            (identical(other.recordingTalk, recordingTalk) ||
                other.recordingTalk == recordingTalk));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recordingTalk);

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingTalkChangedImplCopyWith<_$RecordingTalkChangedImpl>
      get copyWith =>
          __$$RecordingTalkChangedImplCopyWithImpl<_$RecordingTalkChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recordingLoaded,
    required TResult Function(DeepgramSttResult recordingTalk)
        recordingTalkChanged,
    required TResult Function() recordingUserReadyPressed,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStopped,
    required TResult Function() recordingErrorOccured,
    required TResult Function() recordingStateCleared,
    required TResult Function() recordingTalkInterrupted,
  }) {
    return recordingTalkChanged(recordingTalk);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recordingLoaded,
    TResult? Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult? Function()? recordingUserReadyPressed,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStopped,
    TResult? Function()? recordingErrorOccured,
    TResult? Function()? recordingStateCleared,
    TResult? Function()? recordingTalkInterrupted,
  }) {
    return recordingTalkChanged?.call(recordingTalk);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recordingLoaded,
    TResult Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult Function()? recordingUserReadyPressed,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStopped,
    TResult Function()? recordingErrorOccured,
    TResult Function()? recordingStateCleared,
    TResult Function()? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingTalkChanged != null) {
      return recordingTalkChanged(recordingTalk);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordingLoaded value) recordingLoaded,
    required TResult Function(RecordingTalkChanged value) recordingTalkChanged,
    required TResult Function(RecordingUserReadyPressed value)
        recordingUserReadyPressed,
    required TResult Function(RecordingStarted value) recordingStarted,
    required TResult Function(RecordingStopped value) recordingStopped,
    required TResult Function(RecordingErrorOccured value)
        recordingErrorOccured,
    required TResult Function(RecordingStateCleared value)
        recordingStateCleared,
    required TResult Function(RecordingTalkInterrupted value)
        recordingTalkInterrupted,
  }) {
    return recordingTalkChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordingLoaded value)? recordingLoaded,
    TResult? Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult? Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult? Function(RecordingStarted value)? recordingStarted,
    TResult? Function(RecordingStopped value)? recordingStopped,
    TResult? Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult? Function(RecordingStateCleared value)? recordingStateCleared,
    TResult? Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
  }) {
    return recordingTalkChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordingLoaded value)? recordingLoaded,
    TResult Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult Function(RecordingStarted value)? recordingStarted,
    TResult Function(RecordingStopped value)? recordingStopped,
    TResult Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult Function(RecordingStateCleared value)? recordingStateCleared,
    TResult Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingTalkChanged != null) {
      return recordingTalkChanged(this);
    }
    return orElse();
  }
}

abstract class RecordingTalkChanged implements RecordingEvent {
  const factory RecordingTalkChanged(
          {required final DeepgramSttResult recordingTalk}) =
      _$RecordingTalkChangedImpl;

  DeepgramSttResult get recordingTalk;

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingTalkChangedImplCopyWith<_$RecordingTalkChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordingUserReadyPressedImplCopyWith<$Res> {
  factory _$$RecordingUserReadyPressedImplCopyWith(
          _$RecordingUserReadyPressedImpl value,
          $Res Function(_$RecordingUserReadyPressedImpl) then) =
      __$$RecordingUserReadyPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingUserReadyPressedImplCopyWithImpl<$Res>
    extends _$RecordingEventCopyWithImpl<$Res, _$RecordingUserReadyPressedImpl>
    implements _$$RecordingUserReadyPressedImplCopyWith<$Res> {
  __$$RecordingUserReadyPressedImplCopyWithImpl(
      _$RecordingUserReadyPressedImpl _value,
      $Res Function(_$RecordingUserReadyPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordingUserReadyPressedImpl
    with DiagnosticableTreeMixin
    implements RecordingUserReadyPressed {
  const _$RecordingUserReadyPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordingEvent.recordingUserReadyPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'RecordingEvent.recordingUserReadyPressed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingUserReadyPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recordingLoaded,
    required TResult Function(DeepgramSttResult recordingTalk)
        recordingTalkChanged,
    required TResult Function() recordingUserReadyPressed,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStopped,
    required TResult Function() recordingErrorOccured,
    required TResult Function() recordingStateCleared,
    required TResult Function() recordingTalkInterrupted,
  }) {
    return recordingUserReadyPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recordingLoaded,
    TResult? Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult? Function()? recordingUserReadyPressed,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStopped,
    TResult? Function()? recordingErrorOccured,
    TResult? Function()? recordingStateCleared,
    TResult? Function()? recordingTalkInterrupted,
  }) {
    return recordingUserReadyPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recordingLoaded,
    TResult Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult Function()? recordingUserReadyPressed,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStopped,
    TResult Function()? recordingErrorOccured,
    TResult Function()? recordingStateCleared,
    TResult Function()? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingUserReadyPressed != null) {
      return recordingUserReadyPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordingLoaded value) recordingLoaded,
    required TResult Function(RecordingTalkChanged value) recordingTalkChanged,
    required TResult Function(RecordingUserReadyPressed value)
        recordingUserReadyPressed,
    required TResult Function(RecordingStarted value) recordingStarted,
    required TResult Function(RecordingStopped value) recordingStopped,
    required TResult Function(RecordingErrorOccured value)
        recordingErrorOccured,
    required TResult Function(RecordingStateCleared value)
        recordingStateCleared,
    required TResult Function(RecordingTalkInterrupted value)
        recordingTalkInterrupted,
  }) {
    return recordingUserReadyPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordingLoaded value)? recordingLoaded,
    TResult? Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult? Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult? Function(RecordingStarted value)? recordingStarted,
    TResult? Function(RecordingStopped value)? recordingStopped,
    TResult? Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult? Function(RecordingStateCleared value)? recordingStateCleared,
    TResult? Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
  }) {
    return recordingUserReadyPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordingLoaded value)? recordingLoaded,
    TResult Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult Function(RecordingStarted value)? recordingStarted,
    TResult Function(RecordingStopped value)? recordingStopped,
    TResult Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult Function(RecordingStateCleared value)? recordingStateCleared,
    TResult Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingUserReadyPressed != null) {
      return recordingUserReadyPressed(this);
    }
    return orElse();
  }
}

abstract class RecordingUserReadyPressed implements RecordingEvent {
  const factory RecordingUserReadyPressed() = _$RecordingUserReadyPressedImpl;
}

/// @nodoc
abstract class _$$RecordingStartedImplCopyWith<$Res> {
  factory _$$RecordingStartedImplCopyWith(_$RecordingStartedImpl value,
          $Res Function(_$RecordingStartedImpl) then) =
      __$$RecordingStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingStartedImplCopyWithImpl<$Res>
    extends _$RecordingEventCopyWithImpl<$Res, _$RecordingStartedImpl>
    implements _$$RecordingStartedImplCopyWith<$Res> {
  __$$RecordingStartedImplCopyWithImpl(_$RecordingStartedImpl _value,
      $Res Function(_$RecordingStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordingStartedImpl
    with DiagnosticableTreeMixin
    implements RecordingStarted {
  const _$RecordingStartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordingEvent.recordingStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecordingEvent.recordingStarted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordingStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recordingLoaded,
    required TResult Function(DeepgramSttResult recordingTalk)
        recordingTalkChanged,
    required TResult Function() recordingUserReadyPressed,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStopped,
    required TResult Function() recordingErrorOccured,
    required TResult Function() recordingStateCleared,
    required TResult Function() recordingTalkInterrupted,
  }) {
    return recordingStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recordingLoaded,
    TResult? Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult? Function()? recordingUserReadyPressed,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStopped,
    TResult? Function()? recordingErrorOccured,
    TResult? Function()? recordingStateCleared,
    TResult? Function()? recordingTalkInterrupted,
  }) {
    return recordingStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recordingLoaded,
    TResult Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult Function()? recordingUserReadyPressed,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStopped,
    TResult Function()? recordingErrorOccured,
    TResult Function()? recordingStateCleared,
    TResult Function()? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingStarted != null) {
      return recordingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordingLoaded value) recordingLoaded,
    required TResult Function(RecordingTalkChanged value) recordingTalkChanged,
    required TResult Function(RecordingUserReadyPressed value)
        recordingUserReadyPressed,
    required TResult Function(RecordingStarted value) recordingStarted,
    required TResult Function(RecordingStopped value) recordingStopped,
    required TResult Function(RecordingErrorOccured value)
        recordingErrorOccured,
    required TResult Function(RecordingStateCleared value)
        recordingStateCleared,
    required TResult Function(RecordingTalkInterrupted value)
        recordingTalkInterrupted,
  }) {
    return recordingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordingLoaded value)? recordingLoaded,
    TResult? Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult? Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult? Function(RecordingStarted value)? recordingStarted,
    TResult? Function(RecordingStopped value)? recordingStopped,
    TResult? Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult? Function(RecordingStateCleared value)? recordingStateCleared,
    TResult? Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
  }) {
    return recordingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordingLoaded value)? recordingLoaded,
    TResult Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult Function(RecordingStarted value)? recordingStarted,
    TResult Function(RecordingStopped value)? recordingStopped,
    TResult Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult Function(RecordingStateCleared value)? recordingStateCleared,
    TResult Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingStarted != null) {
      return recordingStarted(this);
    }
    return orElse();
  }
}

abstract class RecordingStarted implements RecordingEvent {
  const factory RecordingStarted() = _$RecordingStartedImpl;
}

/// @nodoc
abstract class _$$RecordingStoppedImplCopyWith<$Res> {
  factory _$$RecordingStoppedImplCopyWith(_$RecordingStoppedImpl value,
          $Res Function(_$RecordingStoppedImpl) then) =
      __$$RecordingStoppedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingStoppedImplCopyWithImpl<$Res>
    extends _$RecordingEventCopyWithImpl<$Res, _$RecordingStoppedImpl>
    implements _$$RecordingStoppedImplCopyWith<$Res> {
  __$$RecordingStoppedImplCopyWithImpl(_$RecordingStoppedImpl _value,
      $Res Function(_$RecordingStoppedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordingStoppedImpl
    with DiagnosticableTreeMixin
    implements RecordingStopped {
  const _$RecordingStoppedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordingEvent.recordingStopped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecordingEvent.recordingStopped'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordingStoppedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recordingLoaded,
    required TResult Function(DeepgramSttResult recordingTalk)
        recordingTalkChanged,
    required TResult Function() recordingUserReadyPressed,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStopped,
    required TResult Function() recordingErrorOccured,
    required TResult Function() recordingStateCleared,
    required TResult Function() recordingTalkInterrupted,
  }) {
    return recordingStopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recordingLoaded,
    TResult? Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult? Function()? recordingUserReadyPressed,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStopped,
    TResult? Function()? recordingErrorOccured,
    TResult? Function()? recordingStateCleared,
    TResult? Function()? recordingTalkInterrupted,
  }) {
    return recordingStopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recordingLoaded,
    TResult Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult Function()? recordingUserReadyPressed,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStopped,
    TResult Function()? recordingErrorOccured,
    TResult Function()? recordingStateCleared,
    TResult Function()? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingStopped != null) {
      return recordingStopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordingLoaded value) recordingLoaded,
    required TResult Function(RecordingTalkChanged value) recordingTalkChanged,
    required TResult Function(RecordingUserReadyPressed value)
        recordingUserReadyPressed,
    required TResult Function(RecordingStarted value) recordingStarted,
    required TResult Function(RecordingStopped value) recordingStopped,
    required TResult Function(RecordingErrorOccured value)
        recordingErrorOccured,
    required TResult Function(RecordingStateCleared value)
        recordingStateCleared,
    required TResult Function(RecordingTalkInterrupted value)
        recordingTalkInterrupted,
  }) {
    return recordingStopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordingLoaded value)? recordingLoaded,
    TResult? Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult? Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult? Function(RecordingStarted value)? recordingStarted,
    TResult? Function(RecordingStopped value)? recordingStopped,
    TResult? Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult? Function(RecordingStateCleared value)? recordingStateCleared,
    TResult? Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
  }) {
    return recordingStopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordingLoaded value)? recordingLoaded,
    TResult Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult Function(RecordingStarted value)? recordingStarted,
    TResult Function(RecordingStopped value)? recordingStopped,
    TResult Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult Function(RecordingStateCleared value)? recordingStateCleared,
    TResult Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingStopped != null) {
      return recordingStopped(this);
    }
    return orElse();
  }
}

abstract class RecordingStopped implements RecordingEvent {
  const factory RecordingStopped() = _$RecordingStoppedImpl;
}

/// @nodoc
abstract class _$$RecordingErrorOccuredImplCopyWith<$Res> {
  factory _$$RecordingErrorOccuredImplCopyWith(
          _$RecordingErrorOccuredImpl value,
          $Res Function(_$RecordingErrorOccuredImpl) then) =
      __$$RecordingErrorOccuredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingErrorOccuredImplCopyWithImpl<$Res>
    extends _$RecordingEventCopyWithImpl<$Res, _$RecordingErrorOccuredImpl>
    implements _$$RecordingErrorOccuredImplCopyWith<$Res> {
  __$$RecordingErrorOccuredImplCopyWithImpl(_$RecordingErrorOccuredImpl _value,
      $Res Function(_$RecordingErrorOccuredImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordingErrorOccuredImpl
    with DiagnosticableTreeMixin
    implements RecordingErrorOccured {
  const _$RecordingErrorOccuredImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordingEvent.recordingErrorOccured()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RecordingEvent.recordingErrorOccured'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingErrorOccuredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recordingLoaded,
    required TResult Function(DeepgramSttResult recordingTalk)
        recordingTalkChanged,
    required TResult Function() recordingUserReadyPressed,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStopped,
    required TResult Function() recordingErrorOccured,
    required TResult Function() recordingStateCleared,
    required TResult Function() recordingTalkInterrupted,
  }) {
    return recordingErrorOccured();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recordingLoaded,
    TResult? Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult? Function()? recordingUserReadyPressed,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStopped,
    TResult? Function()? recordingErrorOccured,
    TResult? Function()? recordingStateCleared,
    TResult? Function()? recordingTalkInterrupted,
  }) {
    return recordingErrorOccured?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recordingLoaded,
    TResult Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult Function()? recordingUserReadyPressed,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStopped,
    TResult Function()? recordingErrorOccured,
    TResult Function()? recordingStateCleared,
    TResult Function()? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingErrorOccured != null) {
      return recordingErrorOccured();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordingLoaded value) recordingLoaded,
    required TResult Function(RecordingTalkChanged value) recordingTalkChanged,
    required TResult Function(RecordingUserReadyPressed value)
        recordingUserReadyPressed,
    required TResult Function(RecordingStarted value) recordingStarted,
    required TResult Function(RecordingStopped value) recordingStopped,
    required TResult Function(RecordingErrorOccured value)
        recordingErrorOccured,
    required TResult Function(RecordingStateCleared value)
        recordingStateCleared,
    required TResult Function(RecordingTalkInterrupted value)
        recordingTalkInterrupted,
  }) {
    return recordingErrorOccured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordingLoaded value)? recordingLoaded,
    TResult? Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult? Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult? Function(RecordingStarted value)? recordingStarted,
    TResult? Function(RecordingStopped value)? recordingStopped,
    TResult? Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult? Function(RecordingStateCleared value)? recordingStateCleared,
    TResult? Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
  }) {
    return recordingErrorOccured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordingLoaded value)? recordingLoaded,
    TResult Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult Function(RecordingStarted value)? recordingStarted,
    TResult Function(RecordingStopped value)? recordingStopped,
    TResult Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult Function(RecordingStateCleared value)? recordingStateCleared,
    TResult Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingErrorOccured != null) {
      return recordingErrorOccured(this);
    }
    return orElse();
  }
}

abstract class RecordingErrorOccured implements RecordingEvent {
  const factory RecordingErrorOccured() = _$RecordingErrorOccuredImpl;
}

/// @nodoc
abstract class _$$RecordingStateClearedImplCopyWith<$Res> {
  factory _$$RecordingStateClearedImplCopyWith(
          _$RecordingStateClearedImpl value,
          $Res Function(_$RecordingStateClearedImpl) then) =
      __$$RecordingStateClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingStateClearedImplCopyWithImpl<$Res>
    extends _$RecordingEventCopyWithImpl<$Res, _$RecordingStateClearedImpl>
    implements _$$RecordingStateClearedImplCopyWith<$Res> {
  __$$RecordingStateClearedImplCopyWithImpl(_$RecordingStateClearedImpl _value,
      $Res Function(_$RecordingStateClearedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordingStateClearedImpl
    with DiagnosticableTreeMixin
    implements RecordingStateCleared {
  const _$RecordingStateClearedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordingEvent.recordingStateCleared()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RecordingEvent.recordingStateCleared'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingStateClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recordingLoaded,
    required TResult Function(DeepgramSttResult recordingTalk)
        recordingTalkChanged,
    required TResult Function() recordingUserReadyPressed,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStopped,
    required TResult Function() recordingErrorOccured,
    required TResult Function() recordingStateCleared,
    required TResult Function() recordingTalkInterrupted,
  }) {
    return recordingStateCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recordingLoaded,
    TResult? Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult? Function()? recordingUserReadyPressed,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStopped,
    TResult? Function()? recordingErrorOccured,
    TResult? Function()? recordingStateCleared,
    TResult? Function()? recordingTalkInterrupted,
  }) {
    return recordingStateCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recordingLoaded,
    TResult Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult Function()? recordingUserReadyPressed,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStopped,
    TResult Function()? recordingErrorOccured,
    TResult Function()? recordingStateCleared,
    TResult Function()? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingStateCleared != null) {
      return recordingStateCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordingLoaded value) recordingLoaded,
    required TResult Function(RecordingTalkChanged value) recordingTalkChanged,
    required TResult Function(RecordingUserReadyPressed value)
        recordingUserReadyPressed,
    required TResult Function(RecordingStarted value) recordingStarted,
    required TResult Function(RecordingStopped value) recordingStopped,
    required TResult Function(RecordingErrorOccured value)
        recordingErrorOccured,
    required TResult Function(RecordingStateCleared value)
        recordingStateCleared,
    required TResult Function(RecordingTalkInterrupted value)
        recordingTalkInterrupted,
  }) {
    return recordingStateCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordingLoaded value)? recordingLoaded,
    TResult? Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult? Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult? Function(RecordingStarted value)? recordingStarted,
    TResult? Function(RecordingStopped value)? recordingStopped,
    TResult? Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult? Function(RecordingStateCleared value)? recordingStateCleared,
    TResult? Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
  }) {
    return recordingStateCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordingLoaded value)? recordingLoaded,
    TResult Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult Function(RecordingStarted value)? recordingStarted,
    TResult Function(RecordingStopped value)? recordingStopped,
    TResult Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult Function(RecordingStateCleared value)? recordingStateCleared,
    TResult Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingStateCleared != null) {
      return recordingStateCleared(this);
    }
    return orElse();
  }
}

abstract class RecordingStateCleared implements RecordingEvent {
  const factory RecordingStateCleared() = _$RecordingStateClearedImpl;
}

/// @nodoc
abstract class _$$RecordingTalkInterruptedImplCopyWith<$Res> {
  factory _$$RecordingTalkInterruptedImplCopyWith(
          _$RecordingTalkInterruptedImpl value,
          $Res Function(_$RecordingTalkInterruptedImpl) then) =
      __$$RecordingTalkInterruptedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingTalkInterruptedImplCopyWithImpl<$Res>
    extends _$RecordingEventCopyWithImpl<$Res, _$RecordingTalkInterruptedImpl>
    implements _$$RecordingTalkInterruptedImplCopyWith<$Res> {
  __$$RecordingTalkInterruptedImplCopyWithImpl(
      _$RecordingTalkInterruptedImpl _value,
      $Res Function(_$RecordingTalkInterruptedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordingTalkInterruptedImpl
    with DiagnosticableTreeMixin
    implements RecordingTalkInterrupted {
  const _$RecordingTalkInterruptedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordingEvent.recordingTalkInterrupted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RecordingEvent.recordingTalkInterrupted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingTalkInterruptedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recordingLoaded,
    required TResult Function(DeepgramSttResult recordingTalk)
        recordingTalkChanged,
    required TResult Function() recordingUserReadyPressed,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStopped,
    required TResult Function() recordingErrorOccured,
    required TResult Function() recordingStateCleared,
    required TResult Function() recordingTalkInterrupted,
  }) {
    return recordingTalkInterrupted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recordingLoaded,
    TResult? Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult? Function()? recordingUserReadyPressed,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStopped,
    TResult? Function()? recordingErrorOccured,
    TResult? Function()? recordingStateCleared,
    TResult? Function()? recordingTalkInterrupted,
  }) {
    return recordingTalkInterrupted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recordingLoaded,
    TResult Function(DeepgramSttResult recordingTalk)? recordingTalkChanged,
    TResult Function()? recordingUserReadyPressed,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStopped,
    TResult Function()? recordingErrorOccured,
    TResult Function()? recordingStateCleared,
    TResult Function()? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingTalkInterrupted != null) {
      return recordingTalkInterrupted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordingLoaded value) recordingLoaded,
    required TResult Function(RecordingTalkChanged value) recordingTalkChanged,
    required TResult Function(RecordingUserReadyPressed value)
        recordingUserReadyPressed,
    required TResult Function(RecordingStarted value) recordingStarted,
    required TResult Function(RecordingStopped value) recordingStopped,
    required TResult Function(RecordingErrorOccured value)
        recordingErrorOccured,
    required TResult Function(RecordingStateCleared value)
        recordingStateCleared,
    required TResult Function(RecordingTalkInterrupted value)
        recordingTalkInterrupted,
  }) {
    return recordingTalkInterrupted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordingLoaded value)? recordingLoaded,
    TResult? Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult? Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult? Function(RecordingStarted value)? recordingStarted,
    TResult? Function(RecordingStopped value)? recordingStopped,
    TResult? Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult? Function(RecordingStateCleared value)? recordingStateCleared,
    TResult? Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
  }) {
    return recordingTalkInterrupted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordingLoaded value)? recordingLoaded,
    TResult Function(RecordingTalkChanged value)? recordingTalkChanged,
    TResult Function(RecordingUserReadyPressed value)?
        recordingUserReadyPressed,
    TResult Function(RecordingStarted value)? recordingStarted,
    TResult Function(RecordingStopped value)? recordingStopped,
    TResult Function(RecordingErrorOccured value)? recordingErrorOccured,
    TResult Function(RecordingStateCleared value)? recordingStateCleared,
    TResult Function(RecordingTalkInterrupted value)? recordingTalkInterrupted,
    required TResult orElse(),
  }) {
    if (recordingTalkInterrupted != null) {
      return recordingTalkInterrupted(this);
    }
    return orElse();
  }
}

abstract class RecordingTalkInterrupted implements RecordingEvent {
  const factory RecordingTalkInterrupted() = _$RecordingTalkInterruptedImpl;
}

/// @nodoc
mixin _$RecordingState {
  String get topic => throw _privateConstructorUsedError;
  RecordingStatus get status => throw _privateConstructorUsedError;
  String get recordingTalk => throw _privateConstructorUsedError;
  String get recordingTalkChunk => throw _privateConstructorUsedError;
  int get chunkNumbers => throw _privateConstructorUsedError;

  /// Create a copy of RecordingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingStateCopyWith<RecordingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingStateCopyWith<$Res> {
  factory $RecordingStateCopyWith(
          RecordingState value, $Res Function(RecordingState) then) =
      _$RecordingStateCopyWithImpl<$Res, RecordingState>;
  @useResult
  $Res call(
      {String topic,
      RecordingStatus status,
      String recordingTalk,
      String recordingTalkChunk,
      int chunkNumbers});
}

/// @nodoc
class _$RecordingStateCopyWithImpl<$Res, $Val extends RecordingState>
    implements $RecordingStateCopyWith<$Res> {
  _$RecordingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? status = null,
    Object? recordingTalk = null,
    Object? recordingTalkChunk = null,
    Object? chunkNumbers = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatus,
      recordingTalk: null == recordingTalk
          ? _value.recordingTalk
          : recordingTalk // ignore: cast_nullable_to_non_nullable
              as String,
      recordingTalkChunk: null == recordingTalkChunk
          ? _value.recordingTalkChunk
          : recordingTalkChunk // ignore: cast_nullable_to_non_nullable
              as String,
      chunkNumbers: null == chunkNumbers
          ? _value.chunkNumbers
          : chunkNumbers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordingStateImplCopyWith<$Res>
    implements $RecordingStateCopyWith<$Res> {
  factory _$$RecordingStateImplCopyWith(_$RecordingStateImpl value,
          $Res Function(_$RecordingStateImpl) then) =
      __$$RecordingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String topic,
      RecordingStatus status,
      String recordingTalk,
      String recordingTalkChunk,
      int chunkNumbers});
}

/// @nodoc
class __$$RecordingStateImplCopyWithImpl<$Res>
    extends _$RecordingStateCopyWithImpl<$Res, _$RecordingStateImpl>
    implements _$$RecordingStateImplCopyWith<$Res> {
  __$$RecordingStateImplCopyWithImpl(
      _$RecordingStateImpl _value, $Res Function(_$RecordingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? status = null,
    Object? recordingTalk = null,
    Object? recordingTalkChunk = null,
    Object? chunkNumbers = null,
  }) {
    return _then(_$RecordingStateImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatus,
      recordingTalk: null == recordingTalk
          ? _value.recordingTalk
          : recordingTalk // ignore: cast_nullable_to_non_nullable
              as String,
      recordingTalkChunk: null == recordingTalkChunk
          ? _value.recordingTalkChunk
          : recordingTalkChunk // ignore: cast_nullable_to_non_nullable
              as String,
      chunkNumbers: null == chunkNumbers
          ? _value.chunkNumbers
          : chunkNumbers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecordingStateImpl
    with DiagnosticableTreeMixin
    implements _RecordingState {
  const _$RecordingStateImpl(
      {required this.topic,
      required this.status,
      required this.recordingTalk,
      required this.recordingTalkChunk,
      required this.chunkNumbers});

  @override
  final String topic;
  @override
  final RecordingStatus status;
  @override
  final String recordingTalk;
  @override
  final String recordingTalkChunk;
  @override
  final int chunkNumbers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordingState(topic: $topic, status: $status, recordingTalk: $recordingTalk, recordingTalkChunk: $recordingTalkChunk, chunkNumbers: $chunkNumbers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordingState'))
      ..add(DiagnosticsProperty('topic', topic))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('recordingTalk', recordingTalk))
      ..add(DiagnosticsProperty('recordingTalkChunk', recordingTalkChunk))
      ..add(DiagnosticsProperty('chunkNumbers', chunkNumbers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingStateImpl &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.recordingTalk, recordingTalk) ||
                other.recordingTalk == recordingTalk) &&
            (identical(other.recordingTalkChunk, recordingTalkChunk) ||
                other.recordingTalkChunk == recordingTalkChunk) &&
            (identical(other.chunkNumbers, chunkNumbers) ||
                other.chunkNumbers == chunkNumbers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic, status, recordingTalk,
      recordingTalkChunk, chunkNumbers);

  /// Create a copy of RecordingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingStateImplCopyWith<_$RecordingStateImpl> get copyWith =>
      __$$RecordingStateImplCopyWithImpl<_$RecordingStateImpl>(
          this, _$identity);
}

abstract class _RecordingState implements RecordingState {
  const factory _RecordingState(
      {required final String topic,
      required final RecordingStatus status,
      required final String recordingTalk,
      required final String recordingTalkChunk,
      required final int chunkNumbers}) = _$RecordingStateImpl;

  @override
  String get topic;
  @override
  RecordingStatus get status;
  @override
  String get recordingTalk;
  @override
  String get recordingTalkChunk;
  @override
  int get chunkNumbers;

  /// Create a copy of RecordingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingStateImplCopyWith<_$RecordingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
