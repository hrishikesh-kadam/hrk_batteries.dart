import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('DistanceExt', () {
    group('convert()', () {
      test('au <-> LD', () {
        const auDistance = Distance(value: 1, unit: DistanceUnit.au);
        const expectedLdDistance = Distance(
          value: 389.17037554435,
          unit: DistanceUnit.LD,
        );
        final convertedLdDistance = auDistance.convert(to: DistanceUnit.LD);
        expect(convertedLdDistance, expectedLdDistance);
        final roundTripAuDistance = convertedLdDistance.convert(
          to: DistanceUnit.au,
        );
        expect(
          roundTripAuDistance.value.toStringAsPrecision(6),
          auDistance.value.toStringAsPrecision(6),
        );
        expect(roundTripAuDistance.unit, auDistance.unit);
      });

      test('au -> au', () {
        const auDistance = Distance(value: 1, unit: DistanceUnit.au);
        const expectedAuDistance = Distance(value: 1, unit: DistanceUnit.au);
        final convertedAuDistance = auDistance.convert(to: DistanceUnit.au);
        expect(convertedAuDistance, expectedAuDistance);
        expect(identical(convertedAuDistance, expectedAuDistance), false);
      });
    });
  });
}
