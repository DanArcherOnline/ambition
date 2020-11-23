import 'package:ambition/domain/goal/goal_failure.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final GoalFailure failure;

  const CriticalFailureDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '😱',
          style: TextStyle(fontSize: 100),
        ),
        const SizedBox(height: 20),
        Text(
          failure.maybeMap(
            insufficiantPermissions: (f) => 'Insufficiant Permissions',
            orElse: () => 'Unexpected Error: Please contact customer support.',
          ),
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        )
      ],
    ));
  }
}
