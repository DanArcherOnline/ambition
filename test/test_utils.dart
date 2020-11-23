String buildStringOfLength(int length) {
  final sb = StringBuffer();
  for (var i = 0; i < length; i++) {
    sb.write('x');
  }
  return sb.toString();
}
