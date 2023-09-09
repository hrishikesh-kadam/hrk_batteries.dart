// ignore_for_file: avoid_print

import 'package:hrk_batteries/hrk_batteries.dart';

/// Used in:
/// - https://stackoverflow.com/a/77072019/3302026
/// - https://stackoverflow.com/a/77072118/3302026
/// - https://stackoverflow.com/a/77072137/3302026
/// - https://stackoverflow.com/a/77072363/3302026
/// - https://stackoverflow.com/a/77072366/3302026
void main() {
  final String enToMrLocalizedString = 'A0123456789Z'.localizeDigits(
    toZeroDigit: '\u0966', // toZeroDigit: '०',
  );
  print(enToMrLocalizedString); // A०१२३४५६७८९Z

  final String mrToKnLocalizedString = 'A०१२३४५६७८९Z'.localizeDigits(
    fromZeroDigit: '\u0966', // fromZeroDigit: '०',
    toZeroDigit: '\u0ce6', // toZeroDigit: '೦',
  );
  print(mrToKnLocalizedString); // A೦೧೨೩೪೫೬೭೮೯Z

  final String arToEnLocalizedString = 'A٠١٢٣٤٥٦٧٨٩Z'.localizeDigits(
    fromZeroDigit: '\u0660', // fromZeroDigit: '٠',
    toZeroDigit: '0',
  );
  print(arToEnLocalizedString); // A0123456789Z

  final String enToBnLocalizedString = 'A0123456789Z'.localizeDigits(
    toZeroDigit: '\u09e6',
  );
  print(enToBnLocalizedString); // A০১২৩৪৫৬৭৮৯Z

  final String enToArLocalizedString = 'A0123456789Z'.localizeDigits(
    toZeroDigit: '\u0660', // toZeroDigit: '٠',
  );
  print(enToArLocalizedString); // A٠١٢٣٤٥٦٧٨٩Z

  final String enToFaLocalizedString = 'A0123456789Z'.localizeDigits(
    toZeroDigit: '\u06f0', // toZeroDigit: '۰',
  );
  print(enToFaLocalizedString); // A۰۱۲۳۴۵۶۷۸۹Z
}
