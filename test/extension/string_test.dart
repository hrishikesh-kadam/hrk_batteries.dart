import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('Extension HrkString on String Unit Test', () {
    test('capitalize()', () {
      expect('Lorem', 'LOREM'.capitalize());
      expect('Lorem', 'lorem'.capitalize());
      expect('L', 'l'.capitalize());
      expect('Lo', 'Lo'.capitalize());
      expect('Lorem', 'loRem'.capitalize());
      expect('', ''.capitalize());
    });

    group('localizeDigits()', () {
      test('mr <-> en', () {
        expect(
          'A०१२३४५६७८९Z',
          'A0123456789Z'.localizeDigits(toZeroDigit: '०'),
        );
        expect(
          'A0123456789Z',
          'A०१२३४५६७८९Z'.localizeDigits(
            fromZeroDigit: '०',
            toZeroDigit: '0',
          ),
        );
      });

      test('kn <-> mr', () {
        expect(
          'A०१२३४५६७८९Z',
          'A೦೧೨೩೪೫೬೭೮೯Z'.localizeDigits(
            fromZeroDigit: '೦',
            toZeroDigit: '०',
          ),
        );
        expect(
          'A೦೧೨೩೪೫೬೭೮೯Z',
          'A०१२३४५६७८९Z'.localizeDigits(
            fromZeroDigit: '०',
            toZeroDigit: '೦',
          ),
        );
      });
    });
  });
}
