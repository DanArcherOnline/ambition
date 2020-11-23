part of 'goal_watcher_bloc.dart';

@freezed
abstract class GoalWatcherEvent with _$GoalWatcherEvent {
  const factory GoalWatcherEvent.watchAllstarted() = _WatchAllStarted;
  const factory GoalWatcherEvent.watchUncompletedstarted() =
      _WatchUncompletedStarted;
  const factory GoalWatcherEvent.goalsReceived(
      Either<GoalFailure, KtList<Goal>> failureOrGoals) = _GoalsReceived;
}
