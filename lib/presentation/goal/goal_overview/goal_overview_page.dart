import 'package:ambition/application/auth/auth_bloc.dart';
import 'package:ambition/application/goal/goal_actor/goal_actor_bloc.dart';
import 'package:ambition/application/goal/goal_watcher/goal_watcher_bloc.dart';
import 'package:ambition/injection.dart';
import 'package:ambition/presentation/goal/goal_overview/widgets/goal_overview_body_widget.dart';
import 'package:ambition/presentation/goal/goal_overview/widgets/uncompleted_switch_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ambition/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoalsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (contet) => getIt<GoalWatcherBloc>()
            ..add(const GoalWatcherEvent.watchAllstarted()),
        ),
        BlocProvider(
          create: (contet) => getIt<GoalActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    ExtendedNavigator.of(context).pushSignInPage(),
                orElse: () {},
              );
            },
          ),
          BlocListener<GoalActorBloc, GoalActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    message: state.goalFailure.map(
                      unexpected: (_) =>
                          'An unepected error occured. Please try again later, or contact the customer support staff',
                      insufficiantPermissions: (_) =>
                          'You do not have permission to complete this action',
                      unableToUpdate: (_) =>
                          'There is an error in the system. Please notify customer support. Thank you.',
                    ),
                  );
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Goals'),
            leading: IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
            actions: [
              UncompletedSwitch(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ExtendedNavigator.of(context).pushGoalFormPage(editedGoal: null);
            },
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: GoalsOverviewBody(),
        ),
      ),
    );
  }
}
