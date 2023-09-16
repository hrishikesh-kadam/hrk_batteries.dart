// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

import 'unit.dart';

part 'distance.g.dart';

typedef Distance = ValueUnit<double, DistanceUnit>;
typedef DistanceRange = ValueRange<double, DistanceUnit>;

@JsonSerializable()
class DistanceUnit extends Unit {
  const DistanceUnit({required super.symbol});
  static const ft = DistanceUnit(symbol: 'ft');
  static const m = DistanceUnit(symbol: 'm');
  static const km = DistanceUnit(symbol: 'km');
  static const mi = DistanceUnit(symbol: 'mi');

  /// https://en.wikipedia.org/wiki/Earth_radius
  static const Re = DistanceUnit(symbol: 'Re');

  /// https://cneos.jpl.nasa.gov/glossary/LD.html
  static const LD = DistanceUnit(symbol: 'LD');

  /// https://cneos.jpl.nasa.gov/glossary/au.html
  static const au = DistanceUnit(symbol: 'au');

  static const List<DistanceUnit> all = [ft, m, km, mi, Re, LD, au];

  static final Map<DistanceUnit, Map<DistanceUnit, double>> conversionMap = {
    DistanceUnit.ft: {
      DistanceUnit.ft: 1,
      DistanceUnit.m: 0.3048,
      DistanceUnit.km: 0.0003048,
      DistanceUnit.mi: 0.000189394,
      DistanceUnit.Re: 0.0000000477882491,
      DistanceUnit.LD: 0.00000000079292404,
      DistanceUnit.au: 0.00000000000203746,
    },
    DistanceUnit.m: {
      DistanceUnit.ft: 3.28084,
      DistanceUnit.m: 1,
      DistanceUnit.km: 0.001,
      DistanceUnit.mi: 0.00062137119223733,
      DistanceUnit.Re: 0.00000015678559,
      DistanceUnit.LD: 0.0000000026014432807322,
      DistanceUnit.au: 0.0000000000066845871222684,
    },
    DistanceUnit.km: {
      DistanceUnit.ft: 3280.84,
      DistanceUnit.m: 1000,
      DistanceUnit.km: 1,
      DistanceUnit.mi: 0.62137119223733,
      DistanceUnit.Re: 0.00015678559,
      DistanceUnit.LD: 0.0000026014432807322,
      DistanceUnit.au: 0.0000000066845871222684,
    },
    DistanceUnit.mi: {
      DistanceUnit.ft: 5280,
      DistanceUnit.m: 1609.344,
      DistanceUnit.km: 1.609344,
      DistanceUnit.mi: 1,
      DistanceUnit.Re: 0.00025232195,
      DistanceUnit.LD: 0.0000041866171351866,
      DistanceUnit.au: 0.0000000107578001777,
    },
    DistanceUnit.Re: {
      DistanceUnit.ft: 20925646.325,
      DistanceUnit.m: 6378137,
      // https://nssdc.gsfc.nasa.gov/planetary/factsheet/earthfact.html
      DistanceUnit.km: 6378.137,
      DistanceUnit.mi: 3963.1905919431,
      DistanceUnit.Re: 1,
      DistanceUnit.LD: 0.016592361642239,
      DistanceUnit.au: 0.000042635212454264,
    },
    DistanceUnit.LD: {
      DistanceUnit.ft: 1261155000,
      DistanceUnit.m: 384400000,
      // https://cneos.jpl.nasa.gov/glossary/LD.html
      DistanceUnit.km: 384400,
      DistanceUnit.mi: 238855.08629603,
      DistanceUnit.Re: 60.2683824446,
      DistanceUnit.LD: 1,
      DistanceUnit.au: 0.0025695686589742,
    },
    DistanceUnit.au: {
      DistanceUnit.ft: 490806662401.57,
      DistanceUnit.m: 149597870700,
      DistanceUnit.km: 149597870.700,
      DistanceUnit.mi: 92955807.273026,
      DistanceUnit.Re: 23454.79106203,
      DistanceUnit.LD: 389.17037554435,
      DistanceUnit.au: 1,
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
    final DistanceUnit from = unit;
    if (from == to) {
      return copyWith();
    }
    double conversionFactor = DistanceUnit.conversionMap[from]![to]!;
    return Distance(value: value * conversionFactor, unit: to);
  }
}
