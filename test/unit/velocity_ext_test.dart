import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
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
