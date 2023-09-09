extension HrkString on String {
  String capitalize() {
    if (isEmpty) {
      return '';
    }
    String capitalizedString = this[0].toUpperCase();
    if (length > 1) {
      capitalizedString += substring(1).toLowerCase();
    }
    return capitalizedString;
  }

  /// Zero digits in some languages:
  /// | Language | Zero Digit | Unicode |
  /// | ---      | ---        | ---     |
  /// | Marathi  | ०          | \u0966  |
  /// | Kannada  | ೦          | \u0ce6  |
  /// | Bengali  | ০          | \u09e6  |
  /// | Arabic   | ٠          | \u0660  |
  /// | Persian  | ۰          | \u06f0  |
  ///
  /// For other languages refer https://github.com/dart-lang/i18n/blob/main/pkgs/intl/lib/number_symbols_data.dart
  String localizeDigits({
    String fromZeroDigit = '0',
    required String toZeroDigit,
  }) {
    assert(fromZeroDigit.length == 1);
    assert(toZeroDigit.length == 1);
    final localizedString = StringBuffer();
    for (int i = 0; i < length; i++) {
      final String char = this[i];
      if (char.codeUnitAt(0) >= fromZeroDigit.codeUnitAt(0) &&
          char.codeUnitAt(0) <= fromZeroDigit.codeUnitAt(0) + 9) {
        int digit = char.codeUnitAt(0) - fromZeroDigit.codeUnitAt(0);
        localizedString.writeCharCode(toZeroDigit.codeUnitAt(0) + digit);
      } else {
        localizedString.write(char);
      }
    }
    return localizedString.toString();
  }
}
