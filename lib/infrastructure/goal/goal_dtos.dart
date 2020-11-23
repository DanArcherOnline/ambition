import 'package:ambition/domain/core/value_object.dart';
import 'package:ambition/domain/goal/goal.dart';
import 'package:ambition/domain/goal/todo_item.dart';
import 'package:ambition/domain/goal/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'goal_dtos.freezed.dart';
part 'goal_dtos.g.dart';

@freezed
abstract class GoalDto implements _$GoalDto {
  const GoalDto._();

  const factory GoalDto({
    @JsonKey(ignore: true) String id,
    @required String body,
    @required List<TodoItemDto> todos,
    @required @ServerTimestampConverter() FieldValue serverTimestamp,
  }) = _NoteDto;

  factory GoalDto.fromDomain(Goal goal) {
    return GoalDto(
      id: goal.id.getOrCrash(),
      body: goal.body.getOrCrash(),
      todos: goal.todos
          .map((todoItem) => TodoItemDto.fromDomain(todoItem))
          .asList(),
      serverTimestamp: FieldValue.serverTimestamp(),
    );
  }

  Goal toDomain() {
    return Goal(
      id: UniqueId.fromUniqueString(id),
      body: GoalBody(body),
      todos: todos.map((todoDto) => todoDto.toDomain()).toImmutableList(),
    );
  }

  factory GoalDto.fromJson(Map<String, dynamic> json) =>
      _$GoalDtoFromJson(json);

  factory GoalDto.fromFirestore(DocumentSnapshot doc) {
    return GoalDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) => FieldValue.serverTimestamp();

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class TodoItemDto implements _$TodoItemDto {
  const TodoItemDto._();

  const factory TodoItemDto({
    @required String id,
    @required String name,
    @required bool done,
  }) = _TodoItemDto;

  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    return TodoItemDto(
      id: todoItem.id.getOrCrash(),
      name: todoItem.name.getOrCrash(),
      done: todoItem.done,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      id: UniqueId.fromUniqueString(id),
      name: TodoName(name),
      done: done,
    );
  }

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);
}
