import 'package:ambition/domain/goal/i_goal_repository.dart';
import 'package:ambition/infrastructure/goal/goal_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:ambition/domain/goal/goal_failure.dart';
import 'package:ambition/domain/goal/goal.dart';
import 'package:ambition/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IGoalRepository)
class GoalRepository implements IGoalRepository {
  final FirebaseFirestore _firestore;

  GoalRepository(this._firestore);

  @override
  Stream<Either<GoalFailure, KtList<Goal>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.goalCollection
        .orderBy('serverTimestamp', descending: true)
        .snapshots()
        .map(
          (snapshots) => right<GoalFailure, KtList<Goal>>(
            snapshots.docs
                .map((doc) => GoalDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const GoalFailure.insufficiantPermissions());
      } else {
        return left(const GoalFailure.insufficiantPermissions());
      }
    });
  }

  @override
  Stream<Either<GoalFailure, KtList<Goal>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.goalCollection
        .orderBy('serverTimestamp', descending: true)
        .snapshots()
        .map((snapshots) =>
            snapshots.docs.map((doc) => GoalDto.fromFirestore(doc).toDomain()))
        .map(
          (notes) => right<GoalFailure, KtList<Goal>>(
            notes
                .where(
                  (goal) => goal.todos.any((todoItem) => !todoItem.done),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const GoalFailure.insufficiantPermissions());
      } else {
        return left(const GoalFailure.insufficiantPermissions());
      }
    });
  }

  @override
  Future<Either<GoalFailure, Unit>> create(Goal note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final goalDto = GoalDto.fromDomain(note);
      await userDoc.goalCollection.doc(goalDto.id).set(goalDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const GoalFailure.insufficiantPermissions());
      } else {
        return left(const GoalFailure.unexpected());
      }
    } catch (e) {
      return left(const GoalFailure.unexpected());
    }
  }

  @override
  Future<Either<GoalFailure, Unit>> delete(Goal goal) async {
    try {
      final userDoc = await _firestore.userDocument();
      final goalDto = GoalDto.fromDomain(goal);
      await userDoc.goalCollection.doc(goalDto.id).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const GoalFailure.insufficiantPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const GoalFailure.unableToUpdate());
      } else {
        return left(const GoalFailure.unexpected());
      }
    } catch (e) {
      return left(const GoalFailure.unexpected());
    }
  }

  @override
  Future<Either<GoalFailure, Unit>> update(Goal note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final goalDto = GoalDto.fromDomain(note);
      await userDoc.goalCollection.doc(goalDto.id).update(goalDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const GoalFailure.insufficiantPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const GoalFailure.unableToUpdate());
      } else {
        return left(const GoalFailure.unexpected());
      }
    } catch (e) {
      return left(const GoalFailure.unexpected());
    }
  }
}
