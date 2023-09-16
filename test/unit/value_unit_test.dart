import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('$ValueUnit', () {
    test('toCompactString()', () {
      const distance = Distance(value: 1, unit: DistanceUnit.au);
      expect(distance.toCompactString(), '1.0au');
    });

    test('toDisplayString()', () {
      const distance = Distance(value: 1, unit: DistanceUnit.au);
      expect(distance.toDisplayString(), '1.0 au');
    });
  });
}
