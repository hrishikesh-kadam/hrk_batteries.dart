import 'package:hrk_batteries/hrk_batteries.dart';

// A०१२३४५६७८९Z
final String mrLocalizedString = 'A0123456789Z'.localizeDigits(
  toZeroDigit: '०',
);
// A೦೧೨೩೪೫೬೭೮೯Z
final String knLocalizedString = 'A०१२३४५६७८९Z'.localizeDigits(
  fromZeroDigit: '०',
  toZeroDigit: '೦',
);
