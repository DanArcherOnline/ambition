part of 'goal_watcher_bloc.dart';

@freezed
abstract class GoalWatcherState with _$GoalWatcherState {
  const factory GoalWatcherState.initial() = _Initial;
  const factory GoalWatcherState.loadInProgress() = _LoadInProgress;
  const factory GoalWatcherState.loadSuccess(KtList<Goal> goals) = _LoadSuccess;
  const factory GoalWatcherState.loadFailure(GoalFailure goalFailure) =
      _LoadFailure;
}
