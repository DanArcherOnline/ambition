import 'package:ambition/application/goal/goal_form/goal_form_bloc.dart';
import 'package:ambition/domain/goal/value_objects.dart';
import 'package:ambition/presentation/goal/goal_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';
import 'package:ambition/presentation/goal/goal_form/misc/build_context_x.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocListener<GoalFormBloc, GoalFormState>(
      listener: (context, state) {
        context.formTodos = state.goal.todos
            .map((todoItem) => TodoItemPrimitive.fromDomain(todoItem));
      },
      child: Consumer<FormTodos>(
        builder: (context, formTodos, child) {
          return ImplicitlyAnimatedReorderableList<TodoItemPrimitive>(
            shrinkWrap: true,
            items: formTodos.value.asList(),
            areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
            onReorderFinished: (_, __, ___, newItems) {
              context.formTodos = newItems.toImmutableList();
              context
                  .bloc<GoalFormBloc>()
                  .add(GoalFormEvent.todosChanged(context.formTodos));
            },
            itemBuilder: (context, itemAnimation, todoItem, index) {
              return Reorderable(
                key: ValueKey(todoItem.id),
                builder: (context, dragAnimation, inDrag) {
                  return ScaleTransition(
                    scale: Tween<double>(begin: 1, end: 1.01)
                        .animate(dragAnimation),
                    child: TodoTile(
                      index: index,
                      elevation: dragAnimation.value * 5,
                    ),
                  );
                },
              );
            },
            removeDuration: Duration.zero,
          );
        },
      ),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;
  final double elevation;

  const TodoTile({
    Key key,
    @required this.index,
    double elevation,
  })  : elevation = elevation ?? 0,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final todo =
        context.formTodos.getOrElse(index, (_) => TodoItemPrimitive.empty());

    final textEditingController = useTextEditingController(text: todo.name);

    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          icon: Icons.delete,
          caption: 'Delete',
          onTap: () {
            context.formTodos = context.formTodos.minusElement(todo);
            context
                .bloc<GoalFormBloc>()
                .add(GoalFormEvent.todosChanged(context.formTodos));
          },
        ),
      ],
      child: Material(
        elevation: elevation,
        animationDuration: const Duration(milliseconds: 50),
        child: ListTile(
          leading: Checkbox(
            value: todo.done,
            onChanged: (value) {
              context.formTodos = context.formTodos.map((listsTodo) =>
                  listsTodo == todo ? todo.copyWith(done: value) : listsTodo);
              context
                  .bloc<GoalFormBloc>()
                  .add(GoalFormEvent.todosChanged(context.formTodos));
            },
          ),
          trailing: const Handle(child: Icon(Icons.list)),
          title: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              hintText: 'Todo',
              counterText: '',
              border: InputBorder.none,
            ),
            maxLength: TodoName.maxLength,
            onChanged: (value) {
              context.formTodos = context.formTodos.map((listsTodo) =>
                  listsTodo == todo ? todo.copyWith(name: value) : listsTodo);
              context
                  .bloc<GoalFormBloc>()
                  .add(GoalFormEvent.todosChanged(context.formTodos));
            },
            validator: (_) {
              return context
                  .bloc<GoalFormBloc>()
                  .state
                  .goal
                  .todos[index]
                  .name
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'Cannot be empty',
                      exeedingLength: (_) => 'Too long',
                      multiline: (_) => 'Must be on a single line',
                      orElse: () => null,
                    ),
                    (_) => null,
                  );
            },
          ),
        ),
      ),
    );
  }
}
