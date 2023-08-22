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
  });
}
