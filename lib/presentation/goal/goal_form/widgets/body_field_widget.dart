import 'package:ambition/application/goal/goal_form/goal_form_bloc.dart';
import 'package:ambition/domain/goal/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BodyField extends HookWidget {
  const BodyField({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<GoalFormBloc, GoalFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.goal.body.getOrCrash();
      },
      child: TextFormField(
        controller: textEditingController,
        decoration: const InputDecoration(
          labelText: 'Goal',
          counterText: '',
        ),
        maxLength: GoalBody.maxLength,
        maxLines: null,
        onChanged: (value) =>
            context.bloc<GoalFormBloc>().add(GoalFormEvent.bodyChanged(value)),
        validator: (_) =>
            context.bloc<GoalFormBloc>().state.goal.body.value.fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    exeedingLength: (f) => 'Exceeding Length. Max: ${f.max}',
                    orElse: () => null,
                  ),
                  (r) => null,
                ),
      ),
    );
  }
}
