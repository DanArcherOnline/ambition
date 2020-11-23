import 'package:ambition/application/goal/goal_actor/goal_actor_bloc.dart';
import 'package:ambition/domain/goal/goal.dart';
import 'package:ambition/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoalCard extends StatelessWidget {
  final Goal goal;

  const GoalCard({
    Key key,
    @required this.goal,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          ExtendedNavigator.of(context).pushGoalFormPage(editedGoal: goal);
        },
        onLongPress: () {
          final goalActorBloc = context.bloc<GoalActorBloc>();
          _showDeletionDialog(context, goalActorBloc);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(goal.body.getOrCrash()),
          ],
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, GoalActorBloc goalActorBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected Goal:'),
          content: Text(
            goal.body.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {
                goalActorBloc.add(GoalActorEvent.deleted(goal));
                Navigator.pop(context);
              },
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );
  }
}
