// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/goal/goal.dart';
import '../goal/goal_form/goal_form_page.dart';
import '../goal/goal_overview/goal_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String goalsOverviewPage = '/goals-overview-page';
  static const String goalFormPage = '/goal-form-page';
  static const all = <String>{
    splashPage,
    signInPage,
    goalsOverviewPage,
    goalFormPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.goalsOverviewPage, page: GoalsOverviewPage),
    RouteDef(Routes.goalFormPage, page: GoalFormPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    GoalsOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => GoalsOverviewPage(),
        settings: data,
      );
    },
    GoalFormPage: (data) {
      final args = data.getArgs<GoalFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => GoalFormPage(
          key: args.key,
          editedGoal: args.editedGoal,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushGoalsOverviewPage() =>
      push<dynamic>(Routes.goalsOverviewPage);

  Future<dynamic> pushGoalFormPage({
    Key key,
    @required Goal editedGoal,
  }) =>
      push<dynamic>(
        Routes.goalFormPage,
        arguments: GoalFormPageArguments(key: key, editedGoal: editedGoal),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// GoalFormPage arguments holder class
class GoalFormPageArguments {
  final Key key;
  final Goal editedGoal;
  GoalFormPageArguments({this.key, @required this.editedGoal});
}
