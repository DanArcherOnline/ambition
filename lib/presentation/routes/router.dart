import 'package:ambition/presentation/goal/goal_form/goal_form_page.dart';
import 'package:ambition/presentation/goal/goal_overview/goal_overview_page.dart';
import 'package:ambition/presentation/sign_in/sign_in_page.dart';
import 'package:ambition/presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: GoalsOverviewPage),
    MaterialRoute(page: GoalFormPage, fullscreenDialog: true),
  ],
)
class $Router {}
