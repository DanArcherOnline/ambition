import 'package:ambition/application/goal/goal_watcher/goal_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UncompletedSwitch extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final toggleSwitch = useState(false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          toggleSwitch.value = !toggleSwitch.value;
          context.bloc<GoalWatcherBloc>().add(toggleSwitch.value
              ? const GoalWatcherEvent.watchUncompletedstarted()
              : const GoalWatcherEvent.watchAllstarted());
        },
        child: toggleSwitch.value
            ? const Icon(
                Icons.switch_left,
                key: Key('uncomplete'),
              )
            : const Icon(
                Icons.switch_right,
                key: Key('complete'),
              ),
      ),
    );
  }
}
