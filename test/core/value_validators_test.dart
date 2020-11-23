import 'package:ambition/domain/core/failures.dart';
import 'package:ambition/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';

void main() {
  group('validateEmailAddress', () {
    const validEmailAddress = 'dan@mail.com';
    const invalidEmailAddresses = [
      'danmail.com',
      'dan@mail,com',
      'dan@mai l.com',
      '',
      ' ',
      'dan@mailcom',
    ];
    test(
      'should return an email string in a Right',
      () async {
        //act
        final actual = validateEmailAddress(validEmailAddress);
        //assert
        expect(actual, const Right(validEmailAddress));
      },
    );

    test(
      'should return an invalidEmail failure in a Left',
      () async {
        for (final email in invalidEmailAddresses) {
          //act
          final actual = validateEmailAddress(email);
          //assert
          expect(actual, Left(ValueFailure.invalidEmail(failedValue: email)));
        }
      },
    );
  });

  group('validatePassword', () {
    const validPassword = '123456';
    const shortPassword = '12345';
    test(
      'should return a password string in a Right',
      () async {
        //act
        final actual = validatePassword(validPassword);
        //assert
        expect(actual, const Right(validPassword));
      },
    );

    test(
      'should return a shortPassword failure in a Left',
      () async {
        //act
        final actual = validatePassword(shortPassword);
        //assert
        expect(
          actual,
          const Left(ValueFailure.shortPassword(failedValue: shortPassword)),
        );
      },
    );
  });

  group('validateMaxStringLength', () {
    const maxLength = 3;
    const validString = '123';
    const longString = '1234';
    test(
      'should return the string in a Right',
      () async {
        //act
        final actual = validateMaxStringLength(validString, maxLength);
        //assert
        expect(actual, const Right(validString));
      },
    );

    test(
      'should return an exeedingLength failure in a Left',
      () async {
        //act
        final actual = validateMaxStringLength(longString, maxLength);
        //assert
        expect(
            actual,
            const Left(ValueFailure.exeedingLength(
              failedValue: longString,
              max: maxLength,
            )));
      },
    );
  });

  group('validateStringNotEmpty', () {
    const validString = '123';
    const emptyString = '';
    test(
      'should return the string in a Right',
      () async {
        //act
        final actual = validateStringNotEmpty(validString);
        //assert
        expect(actual, const Right(validString));
      },
    );

    test(
      'should return an empty failure in a Left',
      () async {
        //act
        final actual = validateStringNotEmpty(emptyString);
        //assert
        expect(
          actual,
          const Left(ValueFailure.empty(failedValue: emptyString)),
        );
      },
    );
  });

  group('validateSingleLine', () {
    const validString = 'same_line';
    const multiLineString = 'new\nline';
    test(
      'should return the string in a Right',
      () async {
        //act
        final actual = validateSingleLine(validString);
        //assert
        expect(actual, const Right(validString));
      },
    );

    test(
      'should return a multiline failure in a Left',
      () async {
        //act
        final actual = validateSingleLine(multiLineString);
        //assert
        expect(
          actual,
          const Left(ValueFailure.multiline(failedValue: multiLineString)),
        );
      },
    );
  });

  group('validateMaxListLength', () {
    const maxLength = 3;
    final validList = KtList.of('1', '2', '3');
    final longList = KtList.of('1', '2', '3', '4');
    test(
      'should return the list in a Right',
      () async {
        //act
        final actual = validateMaxListLength(validList, maxLength);
        //assert
        expect(actual, Right(validList));
      },
    );

    test(
      'should return a listTooLong failure in a Left',
      () async {
        //act
        final actual = validateMaxListLength(longList, maxLength);
        //assert
        expect(
          actual,
          Left(ValueFailure.listTooLong(failedValue: longList, max: maxLength)),
        );
      },
    );
  });
}
