import 'package:ambition/application/goal/goal_watcher/goal_watcher_bloc.dart';
import 'package:ambition/presentation/goal/goal_overview/widgets/critical_failure_display_widget.dart';
import 'package:ambition/presentation/goal/goal_overview/widgets/error_goal_card_widget.dart';
import 'package:ambition/presentation/goal/goal_overview/widgets/goal_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoalsOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoalWatcherBloc, GoalWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return ListView.builder(
              itemCount: state.goals.size,
              itemBuilder: (context, index) {
                final goal = state.goals[index];
                if (goal.failureOption.isSome()) {
                  return ErrorGoalCard(goal: goal);
                } else {
                  return GoalCard(goal: goal);
                }
              },
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              failure: state.goalFailure,
            );
          },
        );
      },
    );
  }
}
