// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'goal_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GoalFormEventTearOff {
  const _$GoalFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Goal> preExistingGoalOption) {
    return _Initialized(
      preExistingGoalOption,
    );
  }

// ignore: unused_element
  _BodyChanged bodyChanged(String bodyString) {
    return _BodyChanged(
      bodyString,
    );
  }

// ignore: unused_element
  _TodosChanged todosChanged(KtList<TodoItemPrimitive> todos) {
    return _TodosChanged(
      todos,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $GoalFormEvent = _$GoalFormEventTearOff();

/// @nodoc
mixin _$GoalFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Goal> preExistingGoalOption),
    @required Result bodyChanged(String bodyString),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Goal> preExistingGoalOption),
    Result bodyChanged(String bodyString),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GoalFormEventCopyWith<$Res> {
  factory $GoalFormEventCopyWith(
          GoalFormEvent value, $Res Function(GoalFormEvent) then) =
      _$GoalFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoalFormEventCopyWithImpl<$Res>
    implements $GoalFormEventCopyWith<$Res> {
  _$GoalFormEventCopyWithImpl(this._value, this._then);

  final GoalFormEvent _value;
  // ignore: unused_field
  final $Res Function(GoalFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Goal> preExistingGoalOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$GoalFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object preExistingGoalOption = freezed,
  }) {
    return _then(_Initialized(
      preExistingGoalOption == freezed
          ? _value.preExistingGoalOption
          : preExistingGoalOption as Option<Goal>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.preExistingGoalOption)
      : assert(preExistingGoalOption != null);

  @override
  final Option<Goal> preExistingGoalOption;

  @override
  String toString() {
    return 'GoalFormEvent.initialized(preExistingGoalOption: $preExistingGoalOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.preExistingGoalOption, preExistingGoalOption) ||
                const DeepCollectionEquality().equals(
                    other.preExistingGoalOption, preExistingGoalOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(preExistingGoalOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Goal> preExistingGoalOption),
    @required Result bodyChanged(String bodyString),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return initialized(preExistingGoalOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Goal> preExistingGoalOption),
    Result bodyChanged(String bodyString),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(preExistingGoalOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements GoalFormEvent {
  const factory _Initialized(Option<Goal> preExistingGoalOption) =
      _$_Initialized;

  Option<Goal> get preExistingGoalOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyString});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res> extends _$GoalFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object bodyString = freezed,
  }) {
    return _then(_BodyChanged(
      bodyString == freezed ? _value.bodyString : bodyString as String,
    ));
  }
}

/// @nodoc
class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyString) : assert(bodyString != null);

  @override
  final String bodyString;

  @override
  String toString() {
    return 'GoalFormEvent.bodyChanged(bodyString: $bodyString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyString, bodyString) ||
                const DeepCollectionEquality()
                    .equals(other.bodyString, bodyString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyString);

  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Goal> preExistingGoalOption),
    @required Result bodyChanged(String bodyString),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return bodyChanged(bodyString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Goal> preExistingGoalOption),
    Result bodyChanged(String bodyString),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(bodyString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements GoalFormEvent {
  const factory _BodyChanged(String bodyString) = _$_BodyChanged;

  String get bodyString;
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

/// @nodoc
abstract class _$TodosChangedCopyWith<$Res> {
  factory _$TodosChangedCopyWith(
          _TodosChanged value, $Res Function(_TodosChanged) then) =
      __$TodosChangedCopyWithImpl<$Res>;
  $Res call({KtList<TodoItemPrimitive> todos});
}

/// @nodoc
class __$TodosChangedCopyWithImpl<$Res>
    extends _$GoalFormEventCopyWithImpl<$Res>
    implements _$TodosChangedCopyWith<$Res> {
  __$TodosChangedCopyWithImpl(
      _TodosChanged _value, $Res Function(_TodosChanged) _then)
      : super(_value, (v) => _then(v as _TodosChanged));

  @override
  _TodosChanged get _value => super._value as _TodosChanged;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(_TodosChanged(
      todos == freezed ? _value.todos : todos as KtList<TodoItemPrimitive>,
    ));
  }
}

/// @nodoc
class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged(this.todos) : assert(todos != null);

  @override
  final KtList<TodoItemPrimitive> todos;

  @override
  String toString() {
    return 'GoalFormEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosChanged &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      __$TodosChangedCopyWithImpl<_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Goal> preExistingGoalOption),
    @required Result bodyChanged(String bodyString),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Goal> preExistingGoalOption),
    Result bodyChanged(String bodyString),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements GoalFormEvent {
  const factory _TodosChanged(KtList<TodoItemPrimitive> todos) =
      _$_TodosChanged;

  KtList<TodoItemPrimitive> get todos;
  _$TodosChangedCopyWith<_TodosChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$GoalFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'GoalFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Goal> preExistingGoalOption),
    @required Result bodyChanged(String bodyString),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Goal> preExistingGoalOption),
    Result bodyChanged(String bodyString),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements GoalFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$GoalFormStateTearOff {
  const _$GoalFormStateTearOff();

// ignore: unused_element
  _GoalFormState call(
      {@required Goal goal,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<GoalFailure, Unit>> saveFailureOrSuccessOption}) {
    return _GoalFormState(
      goal: goal,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GoalFormState = _$GoalFormStateTearOff();

/// @nodoc
mixin _$GoalFormState {
  Goal get goal;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<GoalFailure, Unit>> get saveFailureOrSuccessOption;

  $GoalFormStateCopyWith<GoalFormState> get copyWith;
}

/// @nodoc
abstract class $GoalFormStateCopyWith<$Res> {
  factory $GoalFormStateCopyWith(
          GoalFormState value, $Res Function(GoalFormState) then) =
      _$GoalFormStateCopyWithImpl<$Res>;
  $Res call(
      {Goal goal,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<GoalFailure, Unit>> saveFailureOrSuccessOption});

  $GoalCopyWith<$Res> get goal;
}

/// @nodoc
class _$GoalFormStateCopyWithImpl<$Res>
    implements $GoalFormStateCopyWith<$Res> {
  _$GoalFormStateCopyWithImpl(this._value, this._then);

  final GoalFormState _value;
  // ignore: unused_field
  final $Res Function(GoalFormState) _then;

  @override
  $Res call({
    Object goal = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      goal: goal == freezed ? _value.goal : goal as Goal,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<GoalFailure, Unit>>,
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
abstract class _$GoalFormStateCopyWith<$Res>
    implements $GoalFormStateCopyWith<$Res> {
  factory _$GoalFormStateCopyWith(
          _GoalFormState value, $Res Function(_GoalFormState) then) =
      __$GoalFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Goal goal,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<GoalFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $GoalCopyWith<$Res> get goal;
}

/// @nodoc
class __$GoalFormStateCopyWithImpl<$Res>
    extends _$GoalFormStateCopyWithImpl<$Res>
    implements _$GoalFormStateCopyWith<$Res> {
  __$GoalFormStateCopyWithImpl(
      _GoalFormState _value, $Res Function(_GoalFormState) _then)
      : super(_value, (v) => _then(v as _GoalFormState));

  @override
  _GoalFormState get _value => super._value as _GoalFormState;

  @override
  $Res call({
    Object goal = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_GoalFormState(
      goal: goal == freezed ? _value.goal : goal as Goal,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<GoalFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_GoalFormState implements _GoalFormState {
  const _$_GoalFormState(
      {@required this.goal,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(goal != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Goal goal;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<GoalFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'GoalFormState(goal: $goal, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GoalFormState &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$GoalFormStateCopyWith<_GoalFormState> get copyWith =>
      __$GoalFormStateCopyWithImpl<_GoalFormState>(this, _$identity);
}

abstract class _GoalFormState implements GoalFormState {
  const factory _GoalFormState(
          {@required
              Goal goal,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<GoalFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_GoalFormState;

  @override
  Goal get goal;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<GoalFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$GoalFormStateCopyWith<_GoalFormState> get copyWith;
}
