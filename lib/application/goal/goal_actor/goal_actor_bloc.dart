import 'dart:async';

import 'package:ambition/domain/goal/i_goal_repository.dart';
import 'package:ambition/domain/goal/goal.dart';
import 'package:ambition/domain/goal/goal_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'goal_actor_event.dart';
part 'goal_actor_state.dart';
part 'goal_actor_bloc.freezed.dart';

@injectable
class GoalActorBloc extends Bloc<GoalActorEvent, GoalActorState> {
  final IGoalRepository _goalRepository;

  GoalActorBloc(this._goalRepository) : super(const _Initial());

  @override
  Stream<GoalActorState> mapEventToState(
    GoalActorEvent event,
  ) async* {
    yield const GoalActorState.actionInProgress();
    final possibleFailure = await _goalRepository.delete(event.goal);
    yield possibleFailure.fold(
      (goalFailure) => GoalActorState.deleteFailure(goalFailure),
      (_) => const GoalActorState.deleteSuccess(),
    );
  }
}
