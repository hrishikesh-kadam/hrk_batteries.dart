import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('$DistanceUnit', () {
    test('all', () {
      expect(DistanceUnit.all, DistanceUnit.all.toSet().toList());
    });

    test('conversionMap', () {
      for (final entry in DistanceUnit.conversionMap.entries) {
        expect(entry.value.keys, DistanceUnit.all);
        expect(entry.value[entry.key] == 1, true);
        final actualFactors = entry.value.values;
        final expectedFactors = entry.value.values.toList()
          ..sort((a, b) => b.compareTo(a)); // reverse
        expect(actualFactors, expectedFactors);
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
}
