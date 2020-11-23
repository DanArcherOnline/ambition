// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'goal_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GoalActorEventTearOff {
  const _$GoalActorEventTearOff();

// ignore: unused_element
  _Deleted deleted(Goal goal) {
    return _Deleted(
      goal,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GoalActorEvent = _$GoalActorEventTearOff();

/// @nodoc
mixin _$GoalActorEvent {
  Goal get goal;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Goal goal),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Goal goal),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  });

  $GoalActorEventCopyWith<GoalActorEvent> get copyWith;
}

/// @nodoc
abstract class $GoalActorEventCopyWith<$Res> {
  factory $GoalActorEventCopyWith(
          GoalActorEvent value, $Res Function(GoalActorEvent) then) =
      _$GoalActorEventCopyWithImpl<$Res>;
  $Res call({Goal goal});

  $GoalCopyWith<$Res> get goal;
}

/// @nodoc
class _$GoalActorEventCopyWithImpl<$Res>
    implements $GoalActorEventCopyWith<$Res> {
  _$GoalActorEventCopyWithImpl(this._value, this._then);

  final GoalActorEvent _value;
  // ignore: unused_field
  final $Res Function(GoalActorEvent) _then;

  @override
  $Res call({
    Object goal = freezed,
  }) {
    return _then(_value.copyWith(
      goal: goal == freezed ? _value.goal : goal as Goal,
    ));
  }

  @override
  $GoalCopyWith<$Res> get goal {
    if (_value.goal == null) {
      return null;
    }
    return $GoalCopyWith<$Res>(_value.goal, (value) {
      return _then(_value.copyWith(goal: value));
    });
  }
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $GoalActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Goal goal});

  @override
  $GoalCopyWith<$Res> get goal;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$GoalActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object goal = freezed,
  }) {
    return _then(_Deleted(
      goal == freezed ? _value.goal : goal as Goal,
    ));
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.goal) : assert(goal != null);

  @override
  final Goal goal;

  @override
  String toString() {
    return 'GoalActorEvent.deleted(goal: $goal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(goal);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Goal goal),
  }) {
    assert(deleted != null);
    return deleted(goal);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Goal goal),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(goal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements GoalActorEvent {
  const factory _Deleted(Goal goal) = _$_Deleted;

  @override
  Goal get goal;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$GoalActorStateTearOff {
  const _$GoalActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(GoalFailure goalFailure) {
    return _DeleteFailure(
      goalFailure,
    );
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $GoalActorState = _$GoalActorStateTearOff();

/// @nodoc
mixin _$GoalActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(GoalFailure goalFailure),
    @required Result deleteSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(GoalFailure goalFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GoalActorStateCopyWith<$Res> {
  factory $GoalActorStateCopyWith(
          GoalActorState value, $Res Function(GoalActorState) then) =
      _$GoalActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoalActorStateCopyWithImpl<$Res>
    implements $GoalActorStateCopyWith<$Res> {
  _$GoalActorStateCopyWithImpl(this._value, this._then);

  final GoalActorState _value;
  // ignore: unused_field
  final $Res Function(GoalActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GoalActorStateCopyWithImpl<$Res>
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
    return 'GoalActorState.initial()';
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
    @required Result actionInProgress(),
    @required Result deleteFailure(GoalFailure goalFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(GoalFailure goalFailure),
    Result deleteSuccess(),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GoalActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$GoalActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'GoalActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(GoalFailure goalFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(GoalFailure goalFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements GoalActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({GoalFailure goalFailure});

  $GoalFailureCopyWith<$Res> get goalFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$GoalActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object goalFailure = freezed,
  }) {
    return _then(_DeleteFailure(
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
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.goalFailure) : assert(goalFailure != null);

  @override
  final GoalFailure goalFailure;

  @override
  String toString() {
    return 'GoalActorState.deleteFailure(goalFailure: $goalFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.goalFailure, goalFailure) ||
                const DeepCollectionEquality()
                    .equals(other.goalFailure, goalFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(goalFailure);

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(GoalFailure goalFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(goalFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(GoalFailure goalFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(goalFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements GoalActorState {
  const factory _DeleteFailure(GoalFailure goalFailure) = _$_DeleteFailure;

  GoalFailure get goalFailure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$GoalActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'GoalActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(GoalFailure goalFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(GoalFailure goalFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements GoalActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
