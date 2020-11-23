import 'package:ambition/application/goal/goal_form/goal_form_bloc.dart';
import 'package:ambition/presentation/goal/goal_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:ambition/presentation/goal/goal_form/misc/build_context_x.dart';

class AddTodoTile extends StatelessWidget {
  const AddTodoTile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Add a Todo'),
      leading: const Icon(Icons.add),
      onTap: () {
        context.formTodos =
            context.formTodos.plusElement(TodoItemPrimitive.empty());
        context
            .bloc<GoalFormBloc>()
            .add(GoalFormEvent.todosChanged(context.formTodos));
      },
    );
  }
}
