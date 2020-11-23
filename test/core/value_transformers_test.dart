import 'package:ambition/domain/core/value_transformers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('makeColorOpaque', () {
    const completelyTransparent = Colors.transparent;
    const transparentToOpaque = Color(0xFF000000);
    const transparentRed = Color(0x0FFF0000);
    const transparentRedToOpaque = Color(0xFFFF0000);
    test(
      'should make transparent colors opaque',
      () async {
        //act
        final transparentResult = makeColorOpaque(completelyTransparent);
        final redResult = makeColorOpaque(transparentRed);
        //assert
        expect(transparentResult, transparentToOpaque);
        expect(redResult, transparentRedToOpaque);
      },
    );
  });
}
