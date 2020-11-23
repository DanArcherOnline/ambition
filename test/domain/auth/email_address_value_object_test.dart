import 'package:ambition/domain/auth/value_objects.dart';
import 'package:ambition/domain/core/errors.dart';
import 'package:ambition/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const validEmail = 'valid@email.com';
  const invalidEmail = 'valid@emailcom';
  group('EmailAddress Value Object', () {
    test(
      'should throw an AssertionError when null is passed into constructor',
      () async {
        //arrannge
        EmailAddress createNullEmailAddress() => EmailAddress(null);
        //assert
        expect(createNullEmailAddress, throwsA(isA<AssertionError>()));
      },
    );

    test(
      'should have structural equality',
      () async {
        //arrange
        final emailAddress = EmailAddress(validEmail);
        final emailAddress2 = EmailAddress(validEmail);
        //act
        final actual = emailAddress == emailAddress2;
        //assert
        expect(actual, true);
      },
    );
  });
  group('Valid EmailAddress Value Object', () {
    EmailAddress emailAddress;
    setUp(() => emailAddress = EmailAddress(validEmail));

    test(
      'should get a valid EmailAddress in a Right from value',
      () async {
        //act
        final actual = emailAddress.value;
        //assert
        expect(actual, const Right(validEmail));
      },
    );

    test(
      'should get valid email string when calling getOrCrash',
      () async {
        //act
        final actual = emailAddress.getOrCrash();
        //assert
        expect(actual, validEmail);
      },
    );

    test(
      'should get unit when calling failureOrUnit',
      () async {
        //act
        final actual = emailAddress.failureOrUnit;
        //assert
        expect(actual, const Right(unit));
      },
    );

    test(
      'should return true when calling isValid',
      () async {
        //act
        final actual = emailAddress.isValid();
        //assert
        expect(actual, true);
      },
    );
  });
  group('Invalid EmailAddress Value Object', () {
    EmailAddress emailAddress;
    setUp(() => emailAddress = EmailAddress(invalidEmail));

    test(
      'should get a failure in a Left from value',
      () async {
        //act
        final actual = emailAddress.value;
        //assert
        expect(
          actual,
          const Left(ValueFailure.invalidEmail(failedValue: invalidEmail)),
        );
      },
    );

    test(
      'should throw an UnexpectedValueError when calling getOrCrash',
      () async {
        //assert
        expect(emailAddress.getOrCrash, throwsA(isA<UnexpectedValueError>()));
      },
    );

    test(
      'should get a failure when calling failureOrUnit',
      () async {
        //act
        final actual = emailAddress.failureOrUnit;
        //assert
        expect(
          actual,
          const Left(ValueFailure.invalidEmail(failedValue: invalidEmail)),
        );
      },
    );

    test(
      'should return false when calling isValid',
      () async {
        //act
        final actual = emailAddress.isValid();
        //assert
        expect(actual, false);
      },
    );
  });
}
