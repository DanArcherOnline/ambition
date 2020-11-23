import 'package:ambition/presentation/goal/goal_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension FormTodosX on BuildContext {
  KtList<TodoItemPrimitive> get formTodos =>
      Provider.of<FormTodos>(this, listen: false).value;
  set formTodos(KtList<TodoItemPrimitive> todoPrimitives) =>
      Provider.of<FormTodos>(this, listen: false).value = todoPrimitives;
}
