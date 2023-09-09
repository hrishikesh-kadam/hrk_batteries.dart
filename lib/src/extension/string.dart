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
