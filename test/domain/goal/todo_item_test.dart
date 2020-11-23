import 'package:ambition/domain/core/failures.dart';
import 'package:ambition/domain/core/value_object.dart';
import 'package:ambition/domain/goal/todo_item.dart';
import 'package:ambition/domain/goal/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

//ignore: must_be_immutable, avoid_implementing_value_types
class MockTodoName extends Mock implements TodoName {}

//ignore: must_be_immutable, avoid_implementing_value_types
class FakeUniqueId extends Fake implements UniqueId {
  @override
  Either<ValueFailure<String>, String> get value => const Right('dieuqinu');
}

void main() {
  group("TodoItem's", () {
    const emptyTodoName = '';
    const emptyValueFailure = ValueFailure.empty(failedValue: emptyTodoName);
    final fakeUniqueId = FakeUniqueId();
    final mockTodoName = MockTodoName();

    test(
      'failureOption should return Some<ValueFailure> when TodoName is invalid',
      () async {
        //arrange
        final todoItem = TodoItem(
          id: fakeUniqueId,
          name: mockTodoName,
          done: false,
        );
        when(mockTodoName.value).thenReturn(const Left(emptyValueFailure));
        //act
        final actual = todoItem.failureOption;
        //assert
        expect(actual, const Some(emptyValueFailure));
      },
    );

    test(
      'failureOption should return None when TodoName is valid',
      () async {
        //arrange
        final todoItem = TodoItem(
          id: fakeUniqueId,
          name: mockTodoName,
          done: false,
        );
        when(mockTodoName.value).thenReturn(const Right('successful value'));
        //act
        final actual = todoItem.failureOption;
        //assert
        expect(actual, const None());
      },
    );
  });
}
