import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('Extension on $DateTime Unit Test', () {
    test('today()', () {
      final today = HrkDateTime.today();
      expect(today.hour, 0);
      expect(today.minute, 0);
      expect(today.second, 0);
      expect(today.millisecond, 0);
      expect(today.microsecond, 0);
    });

    test('todayUtc()', () {
      final todayUtc = HrkDateTime.todayUtc();
      expect(todayUtc.hour, 0);
      expect(todayUtc.minute, 0);
      expect(todayUtc.second, 0);
      expect(todayUtc.millisecond, 0);
      expect(todayUtc.microsecond, 0);
    });

    test('toDate()', () {
      final date = DateTime.now().toDate();
      expect(date.hour, 0);
      expect(date.minute, 0);
      expect(date.second, 0);
      expect(date.millisecond, 0);
      expect(date.microsecond, 0);
    });

    test('daysInMonth()', () {
      expect(DateTime(1999, 1).daysInMonth(), 31);
      expect(DateTime(1999, 2).daysInMonth(), 28);
      expect(DateTime(1999, 3).daysInMonth(), 31);
      expect(DateTime(1999, 4).daysInMonth(), 30);
      expect(DateTime(1999, 5).daysInMonth(), 31);
      expect(DateTime(1999, 6).daysInMonth(), 30);
      expect(DateTime(1999, 7).daysInMonth(), 31);
      expect(DateTime(1999, 8).daysInMonth(), 31);
      expect(DateTime(1999, 9).daysInMonth(), 30);
      expect(DateTime(1999, 10).daysInMonth(), 31);
      expect(DateTime(1999, 11).daysInMonth(), 30);
      expect(DateTime(1999, 12).daysInMonth(), 31);
      expect(DateTime(1996, 2).daysInMonth(), 29);
      expect(DateTime(1600, 2).daysInMonth(), 29);
      expect(DateTime(1700, 2).daysInMonth(), 28);
      expect(DateTime(1800, 2).daysInMonth(), 28);
      expect(DateTime(1900, 2).daysInMonth(), 28);
      expect(DateTime(2000, 2).daysInMonth(), 29);
    });

    test('isLeapYear()', () {
      expect(DateTime(1600).isLeapYear(), true);
      expect(DateTime(1700).isLeapYear(), false);
      expect(DateTime(1800).isLeapYear(), false);
      expect(DateTime(1900).isLeapYear(), false);
      expect(DateTime(1996).isLeapYear(), true);
      expect(DateTime(1999).isLeapYear(), false);
      expect(DateTime(2000).isLeapYear(), true);
    });

    test('startOfMonth()', () {
      expect(DateTime(1970, 12, 31).startOfMonth(), DateTime(1970, 12, 1));
    });

    test('no leap seconds', () {
      expect(DateTime.parse('2015-06-30 23:59:60Z').second, 0);
      expect(DateTime.parse('2016-12-31 23:59:60Z').second, 0);
    });

    test('microseconds [0...999]', () {
      expect(DateTime.parse('1970-01-01 00:00:00.999999Z').microsecond, 999);
      expect(DateTime.parse('1970-01-01 00:00:00.9999990Z').microsecond, 999);
      expect(DateTime.parse('1970-01-01 00:00:00.9999999Z').microsecond, 999);
    });

    test('endOfMonth()', () {
      expect(
        DateTime(1999, 1).endOfMonth(),
        DateTime(1999, 1, 31, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 2).endOfMonth(),
        DateTime(1999, 2, 28, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 3).endOfMonth(),
        DateTime(1999, 3, 31, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 4).endOfMonth(),
        DateTime(1999, 4, 30, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 5).endOfMonth(),
        DateTime(1999, 5, 31, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 6).endOfMonth(),
        DateTime(1999, 6, 30, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 7).endOfMonth(),
        DateTime(1999, 7, 31, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 8).endOfMonth(),
        DateTime(1999, 8, 31, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 9).endOfMonth(),
        DateTime(1999, 9, 30, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 10).endOfMonth(),
        DateTime(1999, 10, 31, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 11).endOfMonth(),
        DateTime(1999, 11, 30, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1999, 12).endOfMonth(),
        DateTime(1999, 12, 31, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1996, 2).endOfMonth(),
        DateTime(1996, 2, 29, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1600, 2).endOfMonth(),
        DateTime(1600, 2, 29, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1700, 2).endOfMonth(),
        DateTime(1700, 2, 28, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1800, 2).endOfMonth(),
        DateTime(1800, 2, 28, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(1900, 2).endOfMonth(),
        DateTime(1900, 2, 28, 23, 59, 59, 999, 999),
      );
      expect(
        DateTime(2000, 2).endOfMonth(),
        DateTime(2000, 2, 29, 23, 59, 59, 999, 999),
      );
    });

    test('startOfDay()', () {
      expect(
        DateTime(1999, 1, 1, 12, 34, 56, 789, 987).startOfDay(),
        DateTime(1999, 1, 1, 0, 0, 0, 0, 0),
      );
    });

    test('endOfDay()', () {
      expect(
        DateTime(1999, 1, 1, 12, 34, 56, 789, 987).endOfDay(),
        DateTime(1999, 1, 1, 23, 59, 59, 999, 999),
      );
    });

    test('noon()', () {
      expect(
        DateTime(1999, 1, 1, 12, 34, 56, 789, 987).noon(),
        DateTime(1999, 1, 1, 12),
      );
    });
  });
}
