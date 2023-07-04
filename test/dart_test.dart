import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('dart_test', () {
    test('isDartTest() default', () {
      expect(isDartTest(), false);
    });

    test('isDartTest non-default', () {
      expect(isDartTest(), true);
    }, tags: ['with-dart-test-env', 'non-default']);
  });
}
