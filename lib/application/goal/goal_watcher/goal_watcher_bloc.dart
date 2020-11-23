import 'dart:async';

import 'package:ambition/domain/goal/i_goal_repository.dart';
import 'package:ambition/domain/goal/goal.dart';
import 'package:ambition/domain/goal/goal_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'goal_watcher_event.dart';
part 'goal_watcher_state.dart';
part 'goal_watcher_bloc.freezed.dart';

@injectable
class GoalWatcherBloc extends Bloc<GoalWatcherEvent, GoalWatcherState> {
  final IGoalRepository _goalRepository;

  GoalWatcherBloc(this._goalRepository) : super(const _Initial());

  StreamSubscription<Either<GoalFailure, KtList<Goal>>> _goalStreamSubscription;

  @override
  Stream<GoalWatcherState> mapEventToState(
    GoalWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllstarted: (e) async* {
        yield const GoalWatcherState.loadInProgress();
        await _goalStreamSubscription?.cancel();
        _goalStreamSubscription = _goalRepository.watchAll().listen(
            (failureOrGoals) =>
                add(GoalWatcherEvent.goalsReceived(failureOrGoals)));
      },
      watchUncompletedstarted: (e) async* {
        yield const GoalWatcherState.loadInProgress();
        await _goalStreamSubscription?.cancel();
        _goalStreamSubscription = _goalRepository.watchUncompleted().listen(
            (failureOrGoals) =>
                add(GoalWatcherEvent.goalsReceived(failureOrGoals)));
      },
      goalsReceived: (e) async* {
        yield e.failureOrGoals.fold(
          (f) => GoalWatcherState.loadFailure(f),
          (goals) => GoalWatcherState.loadSuccess(goals),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _goalStreamSubscription?.cancel();
    return super.close();
  }
}
