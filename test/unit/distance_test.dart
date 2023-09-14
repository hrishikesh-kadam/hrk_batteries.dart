import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('$DistanceUnit', () {
    test('all', () {
      expect(DistanceUnit.all, DistanceUnit.all.toSet().toList());
    });

    test('conversionMap', () {
      for (final entry in DistanceUnit.conversionMap.entries) {
        expect(entry.value.entries.length, DistanceUnit.all.length);
        expect(entry.value[entry.key] == 1, true);
      }
    });

    group('toJson() / fromJson()', () {
      void testConverter(DistanceUnit object, JsonMap json) {
        final JsonMap convertedJson = object.toJson();
        expect(convertedJson, json);
        final DistanceUnit roundTripObject =
            DistanceUnit.fromJson(convertedJson);
        expect(roundTripObject, object);
        final DistanceUnit convertedState = DistanceUnit.fromJson(json);
        expect(convertedState, object);
        final JsonMap roundTripJson = convertedState.toJson();
        expect(roundTripJson, json);
      }

      test('Basic', () {
        testConverter(DistanceUnit.LD, {'symbol': 'LD'});
      });
    });
  });

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
          roundTripAuDistance.value!.toStringAsPrecision(6),
          auDistance.value!.toStringAsPrecision(6),
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
