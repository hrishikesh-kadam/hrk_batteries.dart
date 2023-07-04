import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('constants_test', () {
    test('kReleaseMode', () {
      expect(kReleaseMode, false);
    });

    test('kProfileMode', () {
      expect(kProfileMode, false);
    });

    test('kDebugMode', () {
      expect(kDebugMode, true);
    });
  });
}
