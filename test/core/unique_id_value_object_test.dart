import 'package:ambition/domain/core/failures.dart';
import 'package:ambition/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const uniqueString = 'fgearg54yhan36hk9saw3tgbj0yte';

  group('Valid UniqueId Value Object', () {
    UniqueId uniqueId;
    setUp(() => uniqueId = UniqueId());

    test(
      'should never have structural equality',
      () async {
        //arrange
        final uniqueId2 = UniqueId();
        //act
        final shouldNotBeEqual = uniqueId != uniqueId2;
        //assert
        expect(shouldNotBeEqual, true);
      },
    );

    test(
      'should get a valid UniqueId in a Right from value',
      () async {
        //act
        final actual = uniqueId.value;
        //assert
        expect(actual, isA<Right<ValueFailure<String>, String>>());
      },
    );
  });

  group('Valid UniqueId.fromUniqueString Value Object', () {
    UniqueId uniqueId;
    setUp(() => uniqueId = UniqueId.fromUniqueString(uniqueString));

    test(
      'should have structural equality',
      () async {
        //arrange
        final uniqueIdFromUniqueString =
            UniqueId.fromUniqueString(uniqueString);
        final uniqueId3 = UniqueId();
        //act
        final shouldBeEqual = uniqueId == uniqueIdFromUniqueString;
        final shouldBeNotEqual = uniqueId != uniqueId3;
        //assert
        expect(shouldBeEqual, true);
        expect(shouldBeNotEqual, true);
      },
    );

    test(
      'should get a valid UniqueId in a Right from value',
      () async {
        //act
        final actual = uniqueId.value;
        //assert
        expect(actual, isA<Right<ValueFailure<String>, String>>());
      },
    );

    test(
      'should throw an AssertionError when null is passed into constructor',
      () async {
        //arrannge
        UniqueId createNullUniqueId() => UniqueId.fromUniqueString(null);
        //assert
        expect(createNullUniqueId, throwsA(isA<AssertionError>()));
      },
    );
  });
}
