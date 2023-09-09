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
            fromZeroDigit: '\u0966', // fromZeroDigit: '०',
            toZeroDigit: '0',
          ),
        );
      });

      test('kn <-> mr', () {
        expect(
          'A०१२३४५६७८९Z',
          'A೦೧೨೩೪೫೬೭೮೯Z'.localizeDigits(
            fromZeroDigit: '\u0ce6', // fromZeroDigit: '೦',
            toZeroDigit: '\u0966', // toZeroDigit: '०',
          ),
        );
        expect(
          'A೦೧೨೩೪೫೬೭೮೯Z',
          'A०१२३४५६७८९Z'.localizeDigits(
            fromZeroDigit: '\u0966', // fromZeroDigit: '०',
            toZeroDigit: '\u0ce6', // toZeroDigit: '೦',
          ),
        );
      });

      test('ar <-> fa', () {
        expect(
          'A۰۱۲۳۴۵۶۷۸۹Z',
          'A٠١٢٣٤٥٦٧٨٩Z'.localizeDigits(
            fromZeroDigit: '\u0660', // fromZeroDigit: '٠',
            toZeroDigit: '\u06f0', // toZeroDigit: '۰',
          ),
        );
        expect(
          'A٠١٢٣٤٥٦٧٨٩Z',
          'A۰۱۲۳۴۵۶۷۸۹Z'.localizeDigits(
            fromZeroDigit: '\u06f0', // fromZeroDigit: '۰',
            toZeroDigit: '\u0660', // toZeroDigit: '٠',
          ),
        );
      });
    });
  });
}
