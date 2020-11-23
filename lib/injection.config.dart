// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'application/goal/goal_actor/goal_actor_bloc.dart';
import 'application/goal/goal_form/goal_form_bloc.dart';
import 'infrastructure/goal/goal_repository.dart';
import 'application/goal/goal_watcher/goal_watcher_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/goal/i_goal_repository.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<IGoalRepository>(
      () => GoalRepository(get<FirebaseFirestore>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<GoalActorBloc>(() => GoalActorBloc(get<IGoalRepository>()));
  gh.factory<GoalFormBloc>(() => GoalFormBloc(get<IGoalRepository>()));
  gh.factory<GoalWatcherBloc>(() => GoalWatcherBloc(get<IGoalRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
