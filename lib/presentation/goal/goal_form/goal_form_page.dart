import 'package:ambition/application/goal/goal_form/goal_form_bloc.dart';
import 'package:ambition/domain/core/dartz_helper.dart';
import 'package:ambition/domain/goal/goal.dart';
import 'package:ambition/domain/goal/goal_failure.dart';
import 'package:ambition/injection.dart';
import 'package:ambition/presentation/goal/goal_form/misc/todo_item_presentation_classes.dart';
import 'package:ambition/presentation/goal/goal_form/widgets/add_todo_tile_widget.dart';
import 'package:ambition/presentation/goal/goal_form/widgets/body_field_widget.dart';
import 'package:ambition/presentation/goal/goal_form/widgets/todo_list_widget.dart';
import 'package:ambition/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class GoalFormPage extends StatelessWidget {
  final Goal editedGoal;

  const GoalFormPage({
    Key key,
    @required this.editedGoal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GoalFormBloc>()
        ..add(GoalFormEvent.initialized(optionOf(editedGoal))),
      child: BlocConsumer<GoalFormBloc, GoalFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.triFold<GoalFailure, Unit>(
            () => null,
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  unexpected: (_) =>
                      'Unexpected Error: Please contact customer support.',
                  insufficiantPermissions: (_) => 'Insufficiant Permsissions',
                  unableToUpdate: (_) =>
                      "Couldn't update the goal. It may have been deleted due to a server error.",
                ),
              ).show(context);
            },
            (_) {
              ExtendedNavigator.of(context).popUntil(
                (route) => route.settings.name == Routes.goalsOverviewPage,
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: [
              const GoalFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;
  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: CircularProgressIndicator(),
              ),
              const SizedBox(height: 16),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GoalFormPageScaffold extends StatelessWidget {
  const GoalFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<GoalFormBloc, GoalFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit this goal' : 'Create a goal');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context.bloc<GoalFormBloc>().add(const GoalFormEvent.saved());
            },
          )
        ],
      ),
      body: BlocBuilder<GoalFormBloc, GoalFormState>(
        // buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => FormTodos(),
            child: Form(
              //TODO update to use autoValidateMode
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    BodyField(),
                    TodoList(),
                    AddTodoTile(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
