import 'package:ambition/domain/auth/auth_failure.dart';
import 'package:ambition/domain/auth/user.dart';
import 'package:ambition/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class IAuthFacade {
  Future<Option<DomainUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
