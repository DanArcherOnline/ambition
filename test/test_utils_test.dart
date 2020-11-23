import 'package:flutter_test/flutter_test.dart';

import 'test_utils.dart';

void main() {
  const largeLength = 1001;

  test(
    'buildStringOfLength should create a string with a length of 1001',
    () async {
      //act
      final actual = buildStringOfLength(largeLength);
      //assert
      expect(actual.length, largeLength);
    },
  );
}
