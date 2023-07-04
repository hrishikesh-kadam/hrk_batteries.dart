import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('common_test', () {
    test('isDartOrFlutterTest() default', () {
      expect(isDartOrFlutterTest(), false);
    });

    test('isDartOrFlutterTest() non-default', () {
      expect(isDartOrFlutterTest(), true);
    }, tags: ['with-dart-test-env', 'non-default']);
  });
}
