// ignore_for_file: unused_local_variable

import 'package:hrk_batteries/hrk_batteries.dart';

void main() {
  // Logger log = Logger();
  // late Level level;
  if (isDartOrFlutterTest()) {
    // level = Level.INFO;
  } else {
    // level = Level.SEVERE;
  }
  // log.log(level, 'Needs Attention');

  final DateTime today = HrkDateTime.today();
  final DateTime todayUtc = HrkDateTime.todayUtc();
  final DateTime date = DateTime.now().toDate();

  int daysInMonth = DateTime(2000, 2).daysInMonth(); // 29
  daysInMonth = DateTime(2100, 2).daysInMonth(); // 28

  bool leapYear = DateTime(2000, 2).isLeapYear(); // true
  leapYear = DateTime(2100, 2).isLeapYear(); // false

  final DateTime startOfMonth = DateTime.now().startOfMonth();
  final DateTime endOfMonth = DateTime.now().endOfMonth();

  final DateTime startOfDay = DateTime.now().startOfDay();
  final DateTime endOfDay = DateTime.now().endOfDay();

  final DateTime noon = DateTime.now().noon();

  // A०१२३४५६७८९Z
  final String enToMrLocalizedString = 'A0123456789Z'.localizeDigits(
    toZeroDigit: '\u0966', // toZeroDigit: '०',
  );
}
