// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GoalTearOff {
  const _$GoalTearOff();

// ignore: unused_element
  _Goal call(
      {@required UniqueId id,
      @required GoalBody body,
      @required KtList<TodoItem> todos}) {
    return _Goal(
      id: id,
      body: body,
      todos: todos,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Goal = _$GoalTearOff();

/// @nodoc
mixin _$Goal {
  UniqueId get id;
  GoalBody get body;
  KtList<TodoItem> get todos;

  $GoalCopyWith<Goal> get copyWith;
}

/// @nodoc
abstract class $GoalCopyWith<$Res> {
  factory $GoalCopyWith(Goal value, $Res Function(Goal) then) =
      _$GoalCopyWithImpl<$Res>;
  $Res call({UniqueId id, GoalBody body, KtList<TodoItem> todos});
}

/// @nodoc
class _$GoalCopyWithImpl<$Res> implements $GoalCopyWith<$Res> {
  _$GoalCopyWithImpl(this._value, this._then);

  final Goal _value;
  // ignore: unused_field
  final $Res Function(Goal) _then;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object todos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      body: body == freezed ? _value.body : body as GoalBody,
      todos: todos == freezed ? _value.todos : todos as KtList<TodoItem>,
    ));
  }
}

/// @nodoc
abstract class _$GoalCopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$GoalCopyWith(_Goal value, $Res Function(_Goal) then) =
      __$GoalCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, GoalBody body, KtList<TodoItem> todos});
}

/// @nodoc
class __$GoalCopyWithImpl<$Res> extends _$GoalCopyWithImpl<$Res>
    implements _$GoalCopyWith<$Res> {
  __$GoalCopyWithImpl(_Goal _value, $Res Function(_Goal) _then)
      : super(_value, (v) => _then(v as _Goal));

  @override
  _Goal get _value => super._value as _Goal;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object todos = freezed,
  }) {
    return _then(_Goal(
      id: id == freezed ? _value.id : id as UniqueId,
      body: body == freezed ? _value.body : body as GoalBody,
      todos: todos == freezed ? _value.todos : todos as KtList<TodoItem>,
    ));
  }
}

/// @nodoc
class _$_Goal extends _Goal {
  const _$_Goal({@required this.id, @required this.body, @required this.todos})
      : assert(id != null),
        assert(body != null),
        assert(todos != null),
        super._();

  @override
  final UniqueId id;
  @override
  final GoalBody body;
  @override
  final KtList<TodoItem> todos;

  @override
  String toString() {
    return 'Goal(id: $id, body: $body, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Goal &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(todos);

  @override
  _$GoalCopyWith<_Goal> get copyWith =>
      __$GoalCopyWithImpl<_Goal>(this, _$identity);
}

abstract class _Goal extends Goal {
  const _Goal._() : super._();
  const factory _Goal(
      {@required UniqueId id,
      @required GoalBody body,
      @required KtList<TodoItem> todos}) = _$_Goal;

  @override
  UniqueId get id;
  @override
  GoalBody get body;
  @override
  KtList<TodoItem> get todos;
  @override
  _$GoalCopyWith<_Goal> get copyWith;
}
