import 'package:ambition/domain/goal/goal.dart';
import 'package:ambition/domain/goal/goal_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IGoalRepository {
  Stream<Either<GoalFailure, KtList<Goal>>> watchAll();
  Stream<Either<GoalFailure, KtList<Goal>>> watchUncompleted();
  Future<Either<GoalFailure, Unit>> create(Goal goal);
  Future<Either<GoalFailure, Unit>> update(Goal goal);
  Future<Either<GoalFailure, Unit>> delete(Goal goal);
}
