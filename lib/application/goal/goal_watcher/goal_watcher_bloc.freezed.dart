// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'goal_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GoalWatcherEventTearOff {
  const _$GoalWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllstarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _WatchUncompletedStarted watchUncompletedstarted() {
    return const _WatchUncompletedStarted();
  }

// ignore: unused_element
  _GoalsReceived goalsReceived(
      Either<GoalFailure, KtList<Goal>> failureOrGoals) {
    return _GoalsReceived(
      failureOrGoals,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GoalWatcherEvent = _$GoalWatcherEventTearOff();

/// @nodoc
mixin _$GoalWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllstarted(),
    @required Result watchUncompletedstarted(),
    @required
        Result goalsReceived(Either<GoalFailure, KtList<Goal>> failureOrGoals),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllstarted(),
    Result watchUncompletedstarted(),
    Result goalsReceived(Either<GoalFailure, KtList<Goal>> failureOrGoals),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllstarted(_WatchAllStarted value),
    @required Result watchUncompletedstarted(_WatchUncompletedStarted value),
    @required Result goalsReceived(_GoalsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllstarted(_WatchAllStarted value),
    Result watchUncompletedstarted(_WatchUncompletedStarted value),
    Result goalsReceived(_GoalsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GoalWatcherEventCopyWith<$Res> {
  factory $GoalWatcherEventCopyWith(
          GoalWatcherEvent value, $Res Function(GoalWatcherEvent) then) =
      _$GoalWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoalWatcherEventCopyWithImpl<$Res>
    implements $GoalWatcherEventCopyWith<$Res> {
  _$GoalWatcherEventCopyWithImpl(this._value, this._then);

  final GoalWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(GoalWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$GoalWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'GoalWatcherEvent.watchAllstarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllstarted(),
    @required Result watchUncompletedstarted(),
    @required
        Result goalsReceived(Either<GoalFailure, KtList<Goal>> failureOrGoals),
  }) {
    assert(watchAllstarted != null);
    assert(watchUncompletedstarted != null);
    assert(goalsReceived != null);
    return watchAllstarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllstarted(),
    Result watchUncompletedstarted(),
    Result goalsReceived(Either<GoalFailure, KtList<Goal>> failureOrGoals),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllstarted != null) {
      return watchAllstarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllstarted(_WatchAllStarted value),
    @required Result watchUncompletedstarted(_WatchUncompletedStarted value),
    @required Result goalsReceived(_GoalsReceived value),
  }) {
    assert(watchAllstarted != null);
    assert(watchUncompletedstarted != null);
    assert(goalsReceived != null);
    return watchAllstarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllstarted(_WatchAllStarted value),
    Result watchUncompletedstarted(_WatchUncompletedStarted value),
    Result goalsReceived(_GoalsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllstarted != null) {
      return watchAllstarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements GoalWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchUncompletedStartedCopyWith<$Res> {
  factory _$WatchUncompletedStartedCopyWith(_WatchUncompletedStarted value,
          $Res Function(_WatchUncompletedStarted) then) =
      __$WatchUncompletedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchUncompletedStartedCopyWithImpl<$Res>
    extends _$GoalWatcherEventCopyWithImpl<$Res>
    implements _$WatchUncompletedStartedCopyWith<$Res> {
  __$WatchUncompletedStartedCopyWithImpl(_WatchUncompletedStarted _value,
      $Res Function(_WatchUncompletedStarted) _then)
      : super(_value, (v) => _then(v as _WatchUncompletedStarted));

  @override
  _WatchUncompletedStarted get _value =>
      super._value as _WatchUncompletedStarted;
}

/// @nodoc
class _$_WatchUncompletedStarted implements _WatchUncompletedStarted {
  const _$_WatchUncompletedStarted();

  @override
  String toString() {
    return 'GoalWatcherEvent.watchUncompletedstarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchUncompletedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllstarted(),
    @required Result watchUncompletedstarted(),
    @required
        Result goalsReceived(Either<GoalFailure, KtList<Goal>> failureOrGoals),
  }) {
    assert(watchAllstarted != null);
    assert(watchUncompletedstarted != null);
    assert(goalsReceived != null);
    return watchUncompletedstarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllstarted(),
    Result watchUncompletedstarted(),
    Result goalsReceived(Either<GoalFailure, KtList<Goal>> failureOrGoals),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchUncompletedstarted != null) {
      return watchUncompletedstarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllstarted(_WatchAllStarted value),
    @required Result watchUncompletedstarted(_WatchUncompletedStarted value),
    @required Result goalsReceived(_GoalsReceived value),
  }) {
    assert(watchAllstarted != null);
    assert(watchUncompletedstarted != null);
    assert(goalsReceived != null);
    return watchUncompletedstarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllstarted(_WatchAllStarted value),
    Result watchUncompletedstarted(_WatchUncompletedStarted value),
    Result goalsReceived(_GoalsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchUncompletedstarted != null) {
      return watchUncompletedstarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUncompletedStarted implements GoalWatcherEvent {
  const factory _WatchUncompletedStarted() = _$_WatchUncompletedStarted;
}

/// @nodoc
abstract class _$GoalsReceivedCopyWith<$Res> {
  factory _$GoalsReceivedCopyWith(
          _GoalsReceived value, $Res Function(_GoalsReceived) then) =
      __$GoalsReceivedCopyWithImpl<$Res>;
  $Res call({Either<GoalFailure, KtList<Goal>> failureOrGoals});
}

/// @nodoc
class __$GoalsReceivedCopyWithImpl<$Res>
    extends _$GoalWatcherEventCopyWithImpl<$Res>
    implements _$GoalsReceivedCopyWith<$Res> {
  __$GoalsReceivedCopyWithImpl(
      _GoalsReceived _value, $Res Function(_GoalsReceived) _then)
      : super(_value, (v) => _then(v as _GoalsReceived));

  @override
  _GoalsReceived get _value => super._value as _GoalsReceived;

  @override
  $Res call({
    Object failureOrGoals = freezed,
  }) {
    return _then(_GoalsReceived(
      failureOrGoals == freezed
          ? _value.failureOrGoals
          : failureOrGoals as Either<GoalFailure, KtList<Goal>>,
    ));
  }
}

/// @nodoc
class _$_GoalsReceived implements _GoalsReceived {
  const _$_GoalsReceived(this.failureOrGoals) : assert(failureOrGoals != null);

  @override
  final Either<GoalFailure, KtList<Goal>> failureOrGoals;

  @override
  String toString() {
    return 'GoalWatcherEvent.goalsReceived(failureOrGoals: $failureOrGoals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GoalsReceived &&
            (identical(other.failureOrGoals, failureOrGoals) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrGoals, failureOrGoals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrGoals);

  @override
  _$GoalsReceivedCopyWith<_GoalsReceived> get copyWith =>
      __$GoalsReceivedCopyWithImpl<_GoalsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllstarted(),
    @required Result watchUncompletedstarted(),
    @required
        Result goalsReceived(Either<GoalFailure, KtList<Goal>> failureOrGoals),
  }) {
    assert(watchAllstarted != null);
    assert(watchUncompletedstarted != null);
    assert(goalsReceived != null);
    return goalsReceived(failureOrGoals);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllstarted(),
    Result watchUncompletedstarted(),
    Result goalsReceived(Either<GoalFailure, KtList<Goal>> failureOrGoals),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (goalsReceived != null) {
      return goalsReceived(failureOrGoals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllstarted(_WatchAllStarted value),
    @required Result watchUncompletedstarted(_WatchUncompletedStarted value),
    @required Result goalsReceived(_GoalsReceived value),
  }) {
    assert(watchAllstarted != null);
    assert(watchUncompletedstarted != null);
    assert(goalsReceived != null);
    return goalsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllstarted(_WatchAllStarted value),
    Result watchUncompletedstarted(_WatchUncompletedStarted value),
    Result goalsReceived(_GoalsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (goalsReceived != null) {
      return goalsReceived(this);
    }
    return orElse();
  }
}

abstract class _GoalsReceived implements GoalWatcherEvent {
  const factory _GoalsReceived(
      Either<GoalFailure, KtList<Goal>> failureOrGoals) = _$_GoalsReceived;

  Either<GoalFailure, KtList<Goal>> get failureOrGoals;
  _$GoalsReceivedCopyWith<_GoalsReceived> get copyWith;
}

/// @nodoc
class _$GoalWatcherStateTearOff {
  const _$GoalWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Goal> goals) {
    return _LoadSuccess(
      goals,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(GoalFailure goalFailure) {
    return _LoadFailure(
      goalFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GoalWatcherState = _$GoalWatcherStateTearOff();

/// @nodoc
mixin _$GoalWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Goal> goals),
    @required Result loadFailure(GoalFailure goalFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Goal> goals),
    Result loadFailure(GoalFailure goalFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GoalWatcherStateCopyWith<$Res> {
  factory $GoalWatcherStateCopyWith(
          GoalWatcherState value, $Res Function(GoalWatcherState) then) =
      _$GoalWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoalWatcherStateCopyWithImpl<$Res>
    implements $GoalWatcherStateCopyWith<$Res> {
  _$GoalWatcherStateCopyWithImpl(this._value, this._then);

  final GoalWatcherState _value;
  // ignore: unused_field
  final $Res Function(GoalWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GoalWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GoalWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Goal> goals),
    @required Result loadFailure(GoalFailure goalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Goal> goals),
    Result loadFailure(GoalFailure goalFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GoalWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$GoalWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'GoalWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Goal> goals),
    @required Result loadFailure(GoalFailure goalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Goal> goals),
    Result loadFailure(GoalFailure goalFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements GoalWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Goal> goals});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$GoalWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object goals = freezed,
  }) {
    return _then(_LoadSuccess(
      goals == freezed ? _value.goals : goals as KtList<Goal>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.goals) : assert(goals != null);

  @override
  final KtList<Goal> goals;

  @override
  String toString() {
    return 'GoalWatcherState.loadSuccess(goals: $goals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.goals, goals) ||
                const DeepCollectionEquality().equals(other.goals, goals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(goals);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Goal> goals),
    @required Result loadFailure(GoalFailure goalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(goals);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Goal> goals),
    Result loadFailure(GoalFailure goalFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(goals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements GoalWatcherState {
  const factory _LoadSuccess(KtList<Goal> goals) = _$_LoadSuccess;

  KtList<Goal> get goals;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({GoalFailure goalFailure});

  $GoalFailureCopyWith<$Res> get goalFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$GoalWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object goalFailure = freezed,
  }) {
    return _then(_LoadFailure(
      goalFailure == freezed ? _value.goalFailure : goalFailure as GoalFailure,
    ));
  }

  @override
  $GoalFailureCopyWith<$Res> get goalFailure {
    if (_value.goalFailure == null) {
      return null;
    }
    return $GoalFailureCopyWith<$Res>(_value.goalFailure, (value) {
      return _then(_value.copyWith(goalFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.goalFailure) : assert(goalFailure != null);

  @override
  final GoalFailure goalFailure;

  @override
  String toString() {
    return 'GoalWatcherState.loadFailure(goalFailure: $goalFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.goalFailure, goalFailure) ||
                const DeepCollectionEquality()
                    .equals(other.goalFailure, goalFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(goalFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Goal> goals),
    @required Result loadFailure(GoalFailure goalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(goalFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Goal> goals),
    Result loadFailure(GoalFailure goalFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(goalFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements GoalWatcherState {
  const factory _LoadFailure(GoalFailure goalFailure) = _$_LoadFailure;

  GoalFailure get goalFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
