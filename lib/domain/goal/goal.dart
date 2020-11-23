import 'package:ambition/domain/core/failures.dart';
import 'package:ambition/domain/core/value_object.dart';
import 'package:ambition/domain/goal/todo_item.dart';
import 'package:ambition/domain/goal/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'goal.freezed.dart';

@freezed
abstract class Goal implements _$Goal {
  const Goal._();

  const factory Goal({
    @required UniqueId id,
    @required GoalBody body,
    @required KtList<TodoItem> todos,
  }) = _Goal;

  factory Goal.empty() => Goal(
        body: GoalBody(''),
        id: UniqueId(),
        todos: emptyList(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(
          todos
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold(
          (f) => some(f),
          (r) => none(),
        );
  }
}
