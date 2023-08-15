import 'unit.dart';

typedef Distance = ValueUnit<double, DistanceUnit>;
typedef DistanceRange = ValueRange<double, DistanceUnit>;

class DistanceUnit extends Unit {
  const DistanceUnit({required super.symbol});

  static const au = DistanceUnit(symbol: 'au');
  static const ld = DistanceUnit(symbol: 'LD');
  static const km = DistanceUnit(symbol: 'km');

  static const List<DistanceUnit> values = [au, ld, km];
}
