import 'package:ambition/domain/core/errors.dart';
import 'package:ambition/domain/core/failures.dart';
import 'package:ambition/domain/goal/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_utils.dart';

void main() {
  const validBody = 'I am a valid body';
  const emptyBody = '';
  const overMaxBodyLength = GoalBody.maxLength + 1;
  final longBody = buildStringOfLength(overMaxBodyLength);

  group('GoalBody Value Object', () {
    test(
      'should throw an AssertionError when null is passed into constructor',
      () async {
        //arrannge
        GoalBody createNullGoalBody() => GoalBody(null);
        //assert
        expect(createNullGoalBody, throwsA(isA<AssertionError>()));
      },
    );

    test(
      'should have structural equality',
      () async {
        //arrange
        final goalBody = GoalBody(validBody);
        final goalBody2 = GoalBody(validBody);
        //act
        final actual = goalBody == goalBody2;
        //assert
        expect(actual, true);
      },
    );
  });
  group('Valid GoalBody Value Object', () {
    GoalBody goalBody;
    setUp(() => goalBody = GoalBody(validBody));

    test(
      'should get a valid goalBody in a Right from value',
      () async {
        //act
        final actual = goalBody.value;
        //assert
        expect(actual, const Right(validBody));
      },
    );

    test(
      'should get valid goal body string when calling getOrCrash',
      () async {
        //act
        final actual = goalBody.getOrCrash();
        //assert
        expect(actual, validBody);
      },
    );

    test(
      'should get unit when calling failureOrUnit',
      () async {
        //act
        final actual = goalBody.failureOrUnit;
        //assert
        expect(actual, const Right(unit));
      },
    );

    test(
      'should return true when calling isValid',
      () async {
        //act
        final actual = goalBody.isValid();
        //assert
        expect(actual, true);
      },
    );
  });
  group('Invalid GoalBody Value Object', () {
    testFailure(
      invalidValue: emptyBody,
      valueFailure: const ValueFailure<String>.empty(failedValue: emptyBody),
    );

    testFailure(
      invalidValue: longBody,
      valueFailure: ValueFailure<String>.exeedingLength(
        failedValue: longBody,
        max: GoalBody.maxLength,
      ),
    );
  });
}

void testFailure({
  @required String invalidValue,
  @required ValueFailure valueFailure,
}) {
  group('(${valueFailure.runtimeType})', () {
    GoalBody goalBody;
    setUp(() => goalBody = GoalBody(invalidValue));

    test(
      'should get a failure in a Left from value',
      () async {
        //act
        final actual = goalBody.value;
        //assert
        expect(
          actual,
          Left(valueFailure),
        );
      },
    );

    test(
      'should throw an UnexpectedValueError when calling getOrCrash',
      () async {
        //assert
        expect(goalBody.getOrCrash, throwsA(isA<UnexpectedValueError>()));
      },
    );

    test(
      'should get a failure when calling failureOrUnit',
      () async {
        //act
        final actual = goalBody.failureOrUnit;
        //assert
        expect(
          actual,
          Left(valueFailure),
        );
      },
    );

    test(
      'should return false when calling isValid',
      () async {
        //act
        final actual = goalBody.isValid();
        //assert
        expect(actual, false);
      },
    );
  });
}
