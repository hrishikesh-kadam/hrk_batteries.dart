extension HrkDateTime on DateTime {
  static DateTime today() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  static DateTime todayUtc() {
    final now = DateTime.timestamp();
    return DateTime(now.year, now.month, now.day);
  }

  DateTime toDate() {
    return DateTime(year, month, day);
  }
}
