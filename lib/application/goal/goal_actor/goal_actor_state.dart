part of 'goal_actor_bloc.dart';

@freezed
abstract class GoalActorState with _$GoalActorState {
  const factory GoalActorState.initial() = _Initial;
  const factory GoalActorState.actionInProgress() = _ActionInProgress;
  const factory GoalActorState.deleteFailure(GoalFailure goalFailure) =
      _DeleteFailure;
  const factory GoalActorState.deleteSuccess() = _DeleteSuccess;
}
