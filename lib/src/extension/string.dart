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
}
