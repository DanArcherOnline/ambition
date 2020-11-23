import 'package:ambition/domain/auth/value_objects.dart';
import 'package:ambition/domain/core/errors.dart';
import 'package:ambition/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const validPassword = '123456';
  const shortPassword = '12345';
  group('Password Value Object', () {
    test(
      'should throw an AssertionError when null is passed into constructor',
      () async {
        //arrannge
        Password createNullPassword() => Password(null);
        //assert
        expect(createNullPassword, throwsA(isA<AssertionError>()));
      },
    );

    test(
      'should have structural equality',
      () async {
        //arrange
        final emailAddress = Password(validPassword);
        final emailAddress2 = Password(validPassword);
        //act
        final actual = emailAddress == emailAddress2;
        //assert
        expect(actual, true);
      },
    );
  });
  group('Valid Password Value Object', () {
    Password password;
    setUp(() => password = Password(validPassword));

    test(
      'should get a valid Password in a Right from value',
      () async {
        //act
        final actual = password.value;
        //assert
        expect(actual, const Right(validPassword));
      },
    );

    test(
      'should get valid email string when calling getOrCrash',
      () async {
        //act
        final actual = password.getOrCrash();
        //assert
        expect(actual, validPassword);
      },
    );

    test(
      'should get unit when calling failureOrUnit',
      () async {
        //act
        final actual = password.failureOrUnit;
        //assert
        expect(actual, const Right(unit));
      },
    );

    test(
      'should return true when calling isValid',
      () async {
        //act
        final actual = password.isValid();
        //assert
        expect(actual, true);
      },
    );
  });
  group('Invalid Password Value Object', () {
    Password password;
    setUp(() => password = Password(shortPassword));

    test(
      'should get a failure in a Left from value',
      () async {
        //act
        final actual = password.value;
        //assert
        expect(
          actual,
          const Left(ValueFailure.shortPassword(failedValue: shortPassword)),
        );
      },
    );

    test(
      'should throw an UnexpectedValueError when calling getOrCrash',
      () async {
        //assert
        expect(password.getOrCrash, throwsA(isA<UnexpectedValueError>()));
      },
    );

    test(
      'should get a failure when calling failureOrUnit',
      () async {
        //act
        final actual = password.failureOrUnit;
        //assert
        expect(
          actual,
          const Left(ValueFailure.shortPassword(failedValue: shortPassword)),
        );
      },
    );

    test(
      'should return false when calling isValid',
      () async {
        //act
        final actual = password.isValid();
        //assert
        expect(actual, false);
      },
    );
  });
}
