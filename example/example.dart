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

  // A०१२३४५६७८९Z
  final String mrLocalizedString = 'A0123456789Z'.localizeDigits(
    toZeroDigit: '०',
  );
}
