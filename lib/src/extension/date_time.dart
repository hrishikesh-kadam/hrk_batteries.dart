extension HrkDateTime on DateTime {
  static DateTime today() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  static DateTime todayUtc() {
    final now = DateTime.timestamp();
    return DateTime(now.year, now.month, now.day);
  }

  /// DateTime retaining just date not the time
  ///
  /// For example:
  /// - 1999-02-26T12:34:56.789987Z -> 1999-02-26T00:00:00.000000Z
  ///
  /// Currently same as [startOfDay]
  DateTime toDate() => DateTime(year, month, day);

  /// The number of days in each month.
  ///
  /// This array uses 1-based month numbers, i.e. January is the 1-st element in
  /// the array, not the 0-th.
  static final List<int> _daysInMonth = [
    0,
    31,
    28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];

  /// Returns the number of days in the specified month.
  ///
  /// This function assumes the use of the Gregorian calendar or the proleptic
  /// Gregorian calendar.
  int daysInMonth() =>
      (month == DateTime.february && isLeapYear()) ? 29 : _daysInMonth[month];

  /// Returns true if [year] is a leap year.
  ///
  /// This implements the Gregorian calendar leap year rules wherein a year is
  /// considered to be a leap year if it is divisible by 4, excepting years
  /// divisible by 100, but including years divisible by 400.
  ///
  /// This function assumes the use of the Gregorian calendar or the proleptic
  /// Gregorian calendar.
  ///
  /// References:
  /// - https://github.com/dart-lang/clock/blob/6e43768a0b135a0d36fc886907b70c4bf27117e6/lib/src/utils.dart#L32-L41
  bool isLeapYear() => year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);

  /// First [day] of the [month], with its start time
  ///
  /// For example:
  /// - 1999-02-26T12:34:56.789987Z -> 1999-02-01T00:00:00.000000Z
  DateTime startOfMonth() => DateTime(year, month, 1);

  /// Last [day] of the [month], with its end time
  ///
  /// For example:
  /// - 1999-02-26T12:34:56.789987Z -> 1999-02-28T23:59:59.999999Z
  /// - 2000-02-26T12:34:56.789987Z -> 2000-02-29T23:59:59.999999Z
  /// - 2100-02-26T12:34:56.789987Z -> 2100-02-28T23:59:59.999999Z
  /// - 1999-05-26T12:34:56.789987Z -> 1999-05-31T23:59:59.999999Z
  /// - 1999-06-26T12:34:56.789987Z -> 1999-06-30T23:59:59.999999Z
  DateTime endOfMonth() => DateTime(year, month, daysInMonth()).endOfDay();

  /// DateTime with start time of the [day]
  ///
  /// For example:
  /// - 1999-02-26T12:34:56.789987Z -> 1999-02-26T00:00:00.000000Z
  ///
  /// Currently same as [toDate]
  DateTime startOfDay() => DateTime(year, month, day);

  /// DateTime with end time of the [day]
  ///
  /// For example:
  /// - 1999-02-26T12:34:56.789987Z -> 1999-02-26T23:59:59.999999Z
  DateTime endOfDay() => DateTime(year, month, day, 23, 59, 59, 999, 999);

  /// DateTime with noon time of the [day]
  ///
  /// For example:
  /// - 1999-02-26T12:34:56.789987Z -> 1999-02-26T12:00:00.000000Z
  DateTime noon() => DateTime(year, month, day, 12);
}
