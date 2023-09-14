// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

import 'unit.dart';

part 'distance.g.dart';

typedef Distance = ValueUnit<double, DistanceUnit>;
typedef DistanceRange = ValueRange<double, DistanceUnit>;

@JsonSerializable()
class DistanceUnit extends Unit {
  const DistanceUnit({required super.symbol});

  /// https://cneos.jpl.nasa.gov/glossary/au.html
  static const au = DistanceUnit(symbol: 'au');

  /// https://cneos.jpl.nasa.gov/glossary/LD.html
  static const LD = DistanceUnit(symbol: 'LD');
  static const km = DistanceUnit(symbol: 'km');
  static const mi = DistanceUnit(symbol: 'mi');

  /// https://en.wikipedia.org/wiki/Earth_radius
  static const Re = DistanceUnit(symbol: 'Re');

  static const List<DistanceUnit> all = [au, LD, km, mi, Re];

  static final Map<DistanceUnit, Map<DistanceUnit, double>> conversionMap = {
    DistanceUnit.au: {
      DistanceUnit.au: 1,
      DistanceUnit.LD: 389.17037554435,
      DistanceUnit.km: 149597870.700,
      DistanceUnit.mi: 92955807.273026,
      DistanceUnit.Re: 23454.79106203,
    },
    DistanceUnit.LD: {
      DistanceUnit.au: 0.0025695686589742,
      DistanceUnit.LD: 1,
      // https://cneos.jpl.nasa.gov/glossary/LD.html
      DistanceUnit.km: 384400,
      DistanceUnit.mi: 238855.08629603,
      DistanceUnit.Re: 60.2683824446,
    },
    DistanceUnit.km: {
      DistanceUnit.au: 0.0000000066845871222684,
      DistanceUnit.LD: 0.0000026014432807322,
      DistanceUnit.km: 1,
      DistanceUnit.mi: 0.62137119223733,
      DistanceUnit.Re: 0.00015678559,
    },
    DistanceUnit.mi: {
      DistanceUnit.au: 0.0000000107578001777,
      DistanceUnit.LD: 0.0000041866171351866,
      DistanceUnit.km: 1.609344,
      DistanceUnit.mi: 1,
      DistanceUnit.Re: 0.00025232195,
    },
    DistanceUnit.Re: {
      DistanceUnit.au: 0.000042635212454264,
      DistanceUnit.LD: 0.016592361642239,
      // https://nssdc.gsfc.nasa.gov/planetary/factsheet/earthfact.html
      DistanceUnit.km: 6378.137,
      DistanceUnit.mi: 3963.1905919431,
      DistanceUnit.Re: 1,
    },
  };

  factory DistanceUnit.fromJson(Map<String, dynamic> json) =>
      _$DistanceUnitFromJson(json);

  Map<String, dynamic> toJson() => _$DistanceUnitToJson(this);
}

extension DistanceExt on Distance {
  Distance convert({
    required DistanceUnit to,
  }) {
    assert(value != null);
    assert(unit != null);
    final DistanceUnit from = unit!;
    if (from == to) {
      return copyWith();
    }
    double conversionFactor = DistanceUnit.conversionMap[from]![to]!;
    return Distance(value: value! * conversionFactor, unit: to);
  }
}
