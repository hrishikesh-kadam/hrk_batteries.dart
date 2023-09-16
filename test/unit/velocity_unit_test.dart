import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('$VelocityUnit', () {
    test('all', () {
      expect(VelocityUnit.all, VelocityUnit.all.toSet().toList());
    });

    test('conversionMap', () {
      for (final entry in VelocityUnit.conversionMap.entries) {
        expect(entry.value.keys, VelocityUnit.all);
        expect(entry.value[entry.key] == 1, true);
        final actualFactors = entry.value.values;
        final expectedFactors = entry.value.values.toList()
          ..sort((a, b) => b.compareTo(a)); // reverse
        expect(actualFactors, expectedFactors);
      }
    });

    group('toJson() / fromJson()', () {
      void testConverter(VelocityUnit object, JsonMap json) {
        final JsonMap convertedJson = object.toJson();
        expect(convertedJson, json);
        final VelocityUnit roundTripObject =
            VelocityUnit.fromJson(convertedJson);
        expect(roundTripObject, object);
        final VelocityUnit convertedState = VelocityUnit.fromJson(json);
        expect(convertedState, object);
        final JsonMap roundTripJson = convertedState.toJson();
        expect(roundTripJson, json);
      }

      test('Basic', () {
        testConverter(VelocityUnit.kmps, {'symbol': 'km/s'});
      });
    });
  });
}
