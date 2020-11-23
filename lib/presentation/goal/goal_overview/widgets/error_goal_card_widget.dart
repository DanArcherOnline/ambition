import 'package:ambition/domain/goal/goal.dart';
import 'package:flutter/material.dart';

class ErrorGoalCard extends StatelessWidget {
  final Goal goal;

  const ErrorGoalCard({
    Key key,
    @required this.goal,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: const Text(
        'Invalid Goal: Sorry, this is most likely a problem on our end. '
        'Please contact cusomter support.',
      ),
    );
  }
}
