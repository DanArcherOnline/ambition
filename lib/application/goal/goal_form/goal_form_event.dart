part of 'goal_form_bloc.dart';

@freezed
abstract class GoalFormEvent with _$GoalFormEvent {
  const factory GoalFormEvent.initialized(Option<Goal> preExistingGoalOption) =
      _Initialized;
  const factory GoalFormEvent.bodyChanged(String bodyString) = _BodyChanged;
  const factory GoalFormEvent.todosChanged(KtList<TodoItemPrimitive> todos) =
      _TodosChanged;
  const factory GoalFormEvent.saved() = _Saved;
}
