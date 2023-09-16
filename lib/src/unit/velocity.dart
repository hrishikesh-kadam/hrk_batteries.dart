import 'package:json_annotation/json_annotation.dart';

import 'unit.dart';

part 'velocity.g.dart';

typedef Velocity = ValueUnit<double, VelocityUnit>;

@JsonSerializable()
class VelocityUnit extends Unit {
  const VelocityUnit({required super.symbol});

  static const kmps = VelocityUnit(symbol: 'km/s');
  static const miph = VelocityUnit(symbol: 'mi/h');
  static const aupd = VelocityUnit(symbol: 'au/d');

  static const List<VelocityUnit> all = [kmps, miph, aupd];

  static final Map<VelocityUnit, Map<VelocityUnit, double>> conversionMap = {
    VelocityUnit.kmps: {
      VelocityUnit.kmps: 1,
      VelocityUnit.miph: 2236.936,
      VelocityUnit.aupd: 0.000577548,
    },
    VelocityUnit.miph: {
      VelocityUnit.kmps: 0.00044704,
      VelocityUnit.miph: 1,
      VelocityUnit.aupd: 0.00000025819,
    },
    VelocityUnit.aupd: {
      VelocityUnit.kmps: 1731.46,
      VelocityUnit.miph: 3873000,
      VelocityUnit.aupd: 1,
    },
  };

  factory VelocityUnit.fromJson(Map<String, dynamic> json) =>
      _$VelocityUnitFromJson(json);

  Map<String, dynamic> toJson() => _$VelocityUnitToJson(this);
}

extension VelocityExt on Velocity {
  Velocity convert({
    required VelocityUnit to,
  }) {
    final VelocityUnit from = unit;
    if (from == to) {
      return copyWith();
    }
    double conversionFactor = VelocityUnit.conversionMap[from]![to]!;
    return Velocity(value: value * conversionFactor, unit: to);
  }
}
