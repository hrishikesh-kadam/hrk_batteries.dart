import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('$ValueUnit', () {
    test('toCompactString()', () {
      Distance distance = const Distance(value: 1, unit: DistanceUnit.au);
      expect(distance.toCompactString(), '1.0au');
      distance = const Distance(value: 1);
      expect(distance.toCompactString(), '1.0');
      distance = const Distance(unit: DistanceUnit.au);
      expect(distance.toCompactString(), '');
      distance = const Distance();
      expect(distance.toCompactString(), '');
    });

    test('toDisplayString()', () {
      Distance distance = const Distance(value: 1, unit: DistanceUnit.au);
      expect(distance.toDisplayString(), '1.0 au');
      distance = const Distance(value: 1);
      expect(distance.toDisplayString(), '1.0');
      distance = const Distance(unit: DistanceUnit.au);
      expect(distance.toDisplayString(), '');
      distance = const Distance();
      expect(distance.toDisplayString(), '');
    });
  });
}
