import 'package:ambition/domain/core/failures.dart';
import 'package:ambition/domain/core/value_object.dart';
import 'package:ambition/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class GoalBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory GoalBody(String input) {
    assert(input != null);
    return GoalBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const GoalBody._(this.value);
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TodoName(String input) {
    assert(input != null);
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const TodoName._(this.value);
}
