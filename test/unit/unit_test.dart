// ignore_for_file: prefer_const_constructors

import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('$Unit', () {
    test('equality', () {
      Unit unit1 = Unit(symbol: 'km');
      Unit unit2 = Unit(symbol: 'km');
      expect(unit1 == unit2, true);
      unit1 = DistanceUnit(symbol: 'km');
      unit2 = DistanceUnit(symbol: 'km');
      expect(unit1 == unit2, true);
      unit1 = DistanceUnit(symbol: 'km');
      unit2 = Unit(symbol: 'km');
      expect(unit1 != unit2, true);
    });
  });
}
