import 'package:ambition/domain/core/errors.dart';
import 'package:ambition/domain/core/failures.dart';
import 'package:ambition/domain/goal/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_utils.dart';

void main() {
  const overMaxTodoNameLength = TodoName.maxLength + 1;
  final longTodoName = buildStringOfLength(overMaxTodoNameLength);

  const validTodoName = 'I am a valid todo';
  const emptyTodoName = '';
  const multiLineTodoName = 'I have more\nthan one line';

  const emptyTodoNameFailure = ValueFailure.empty(failedValue: emptyTodoName);
  final longTodoNameFailure = ValueFailure.exeedingLength(
      failedValue: longTodoName, max: TodoName.maxLength);
  const multiLineTodoNameFailure =
      ValueFailure.multiline(failedValue: multiLineTodoName);

  group('TodoName Value Object', () {
    test(
      'should throw an AssertionError when null is passed into constructor',
      () async {
        //arrannge
        TodoName createNullTodoName() => TodoName(null);
        //assert
        expect(createNullTodoName, throwsA(isA<AssertionError>()));
      },
    );

    test(
      'should have structural equality',
      () async {
        //arrange
        final todoName = TodoName(validTodoName);
        final todoName2 = TodoName(validTodoName);
        //act
        final actual = todoName == todoName2;
        //assert
        expect(actual, true);
      },
    );
  });
  group('Valid TodoName Value Object', () {
    TodoName todoName;
    setUp(() => todoName = TodoName(validTodoName));

    test(
      'should get a valid TodoName in a Right from value',
      () async {
        //act
        final actual = todoName.value;
        //assert
        expect(actual, const Right(validTodoName));
      },
    );

    test(
      'should get valid todo name string when calling getOrCrash',
      () async {
        //act
        final actual = todoName.getOrCrash();
        //assert
        expect(actual, validTodoName);
      },
    );

    test(
      'should get unit when calling failureOrUnit',
      () async {
        //act
        final actual = todoName.failureOrUnit;
        //assert
        expect(actual, const Right(unit));
      },
    );

    test(
      'should return true when calling isValid',
      () async {
        //act
        final actual = todoName.isValid();
        //assert
        expect(actual, true);
      },
    );
  });
  group('Invalid TodoName Value Object', () {
    testFailure(
      invalidValue: emptyTodoName,
      valueFailure: emptyTodoNameFailure,
    );

    testFailure(
      invalidValue: longTodoName,
      valueFailure: longTodoNameFailure,
    );

    testFailure(
      invalidValue: multiLineTodoName,
      valueFailure: multiLineTodoNameFailure,
    );
  });
}

void testFailure({
  @required String invalidValue,
  @required ValueFailure valueFailure,
}) {
  group('(${valueFailure.runtimeType})', () {
    TodoName todoName;
    setUp(() => todoName = TodoName(invalidValue));

    test(
      'should get a failure in a Left from value',
      () async {
        //act
        final actual = todoName.value;
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
        expect(todoName.getOrCrash, throwsA(isA<UnexpectedValueError>()));
      },
    );

    test(
      'should get a failure when calling failureOrUnit',
      () async {
        //act
        final actual = todoName.failureOrUnit;
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
        final actual = todoName.isValid();
        //assert
        expect(actual, false);
      },
    );
  });
}
