import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('$VelocityUnit', () {
    test('all', () {
      expect(VelocityUnit.all, VelocityUnit.all.toSet().toList());
    });

    test('conversionMap', () {
      for (final entry in VelocityUnit.conversionMap.entries) {
        expect(entry.value.entries.length, VelocityUnit.all.length);
        expect(entry.value[entry.key] == 1, true);
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

  group('VelocityExt', () {
    group('convert()', () {
      test('kmps <-> miph', () {
        const kmpsVelocity = Velocity(value: 1, unit: VelocityUnit.kmps);
        const expectedMiphVelocity = Velocity(
          value: 2236.936,
          unit: VelocityUnit.miph,
        );
        final convertedMiphVelocity = kmpsVelocity.convert(
          to: VelocityUnit.miph,
        );
        expect(convertedMiphVelocity, expectedMiphVelocity);
        final roundTripKmpsVelocity = convertedMiphVelocity.convert(
          to: VelocityUnit.kmps,
        );
        expect(
          roundTripKmpsVelocity.value.toStringAsPrecision(6),
          kmpsVelocity.value.toStringAsPrecision(6),
        );
        expect(roundTripKmpsVelocity.unit, kmpsVelocity.unit);
      });

      test('kmps -> kmps', () {
        const kmpsVelocity = Velocity(value: 1, unit: VelocityUnit.kmps);
        const expectedKmpsVelocity = Velocity(
          value: 1,
          unit: VelocityUnit.kmps,
        );
        final convertedKmpsVelocity = kmpsVelocity.convert(
          to: VelocityUnit.kmps,
        );
        expect(convertedKmpsVelocity, expectedKmpsVelocity);
        expect(identical(convertedKmpsVelocity, expectedKmpsVelocity), false);
      });
    });
  });
}
