import 'dart:async';

import 'package:ambition/domain/goal/i_goal_repository.dart';
import 'package:ambition/domain/goal/goal.dart';
import 'package:ambition/domain/goal/goal_failure.dart';
import 'package:ambition/domain/goal/value_objects.dart';
import 'package:ambition/presentation/goal/goal_form/misc/todo_item_presentation_classes.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'goal_form_event.dart';
part 'goal_form_state.dart';
part 'goal_form_bloc.freezed.dart';

@injectable
class GoalFormBloc extends Bloc<GoalFormEvent, GoalFormState> {
  final IGoalRepository _goalRepository;

  GoalFormBloc(this._goalRepository) : super(GoalFormState.initial());

  @override
  Stream<GoalFormState> mapEventToState(
    GoalFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.preExistingGoalOption.fold(
          () => state,
          (preExistingGoal) => state.copyWith(
            goal: preExistingGoal,
            isEditing: true,
          ),
        );
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          goal: state.goal.copyWith(body: GoalBody(e.bodyString)),
          saveFailureOrSuccessOption: none(),
        );
      },
      todosChanged: (e) async* {
        yield state.copyWith(
          goal: state.goal.copyWith(
            todos: e.todos.map(
              (todoPrimitive) => todoPrimitive.toDomain(),
            ),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<GoalFailure, Unit> failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.goal.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _goalRepository.update(state.goal)
              : await _goalRepository.create(state.goal);
        }
        yield state.copyWith(
          showErrorMessages: true,
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
