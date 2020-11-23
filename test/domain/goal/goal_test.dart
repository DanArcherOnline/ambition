import 'package:ambition/domain/core/failures.dart';
import 'package:ambition/domain/core/value_object.dart';
import 'package:ambition/domain/goal/goal.dart';
import 'package:ambition/domain/goal/todo_item.dart';
import 'package:ambition/domain/goal/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

//ignore: must_be_immutable, avoid_implementing_value_types
class FakeUniqueId extends Fake implements UniqueId {
  @override
  Either<ValueFailure<String>, String> get value => const Right('dieuqinu');
}

//ignore: must_be_immutable, avoid_implementing_value_types
class MockGoalBody extends Mock implements GoalBody {}

//ignore: must_be_immutable, avoid_implementing_value_types
class MockTodoItem extends Mock implements TodoItem {}

void main() {
  group("Goal's", () {
    Goal goal;

    final fakeUniqueId = FakeUniqueId();
    final mockGoalBody = MockGoalBody();
    final mockTodo1 = MockTodoItem();
    final mockTodo2 = MockTodoItem();
    final todos = KtList.of(mockTodo1, mockTodo2);

    const emptyString = '';
    const emptyValueFailure = ValueFailure.empty(failedValue: emptyString);

    setUp(
      () => goal = Goal(
        id: fakeUniqueId,
        body: mockGoalBody,
        todos: todos,
      ),
    );

    test(
      "failureOption should return a None when all value objects are valid",
      () async {
        //arrange
        when(mockGoalBody.failureOrUnit).thenReturn(right(unit));
        when(mockTodo1.failureOption).thenReturn(none());
        when(mockTodo2.failureOption).thenReturn(none());

        //act
        final actual = goal.failureOption;
        //assert
        expect(actual, none());
      },
    );

    test(
      "failureOption should return a Some containing "
      "BodyGoal's failure when BodyGoal is invalid",
      () async {
        //arrange
        when(mockGoalBody.failureOrUnit).thenReturn(left(emptyValueFailure));
        when(mockTodo1.failureOption).thenReturn(none());
        when(mockTodo2.failureOption).thenReturn(none());

        //act
        final actual = goal.failureOption;
        //assert
        expect(actual, some(emptyValueFailure));
      },
    );

    test(
      "failureOption should return a Some containing the first "
      "TodoItem's failure, from it's TodoName property, "
      "when TodoItem is invalid",
      () async {
        //arrange
        when(mockGoalBody.failureOrUnit).thenReturn(left(emptyValueFailure));
        when(mockTodo1.failureOption).thenReturn(some(emptyValueFailure));
        when(mockTodo2.failureOption).thenReturn(none());

        //act
        final actual = goal.failureOption;
        //assert
        expect(actual, some(emptyValueFailure));
      },
    );

    test(
      "failureOption should return a Some containing the second "
      "TodoItem's failure, from it's TodoName property, "
      "when TodoItem is invalid",
      () async {
        //arrange
        when(mockGoalBody.failureOrUnit).thenReturn(left(emptyValueFailure));
        when(mockTodo1.failureOption).thenReturn(none());
        when(mockTodo2.failureOption).thenReturn(some(emptyValueFailure));

        //act
        final actual = goal.failureOption;
        //assert
        expect(actual, some(emptyValueFailure));
      },
    );
  });
}
