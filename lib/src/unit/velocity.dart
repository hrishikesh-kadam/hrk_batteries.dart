import 'package:json_annotation/json_annotation.dart';

import 'unit.dart';

part 'velocity.g.dart';

typedef Velocity = ValueUnit<double, VelocityUnit>;

@JsonSerializable()
class VelocityUnit extends Unit {
  const VelocityUnit({required super.symbol});

  static const miph = VelocityUnit(symbol: 'mi/h');
  static const kmps = VelocityUnit(symbol: 'km/s');
  static const aupd = VelocityUnit(symbol: 'au/d');

  static const List<VelocityUnit> all = [miph, kmps, aupd];

  static final Map<VelocityUnit, Map<VelocityUnit, double>> conversionMap = {
    VelocityUnit.miph: {
      VelocityUnit.miph: 1,
      VelocityUnit.kmps: 0.00044704,
      VelocityUnit.aupd: 0.00000025819,
    },
    VelocityUnit.kmps: {
      VelocityUnit.miph: 2236.936,
      VelocityUnit.kmps: 1,
      VelocityUnit.aupd: 0.000577548,
    },
    VelocityUnit.aupd: {
      VelocityUnit.miph: 3873000,
      VelocityUnit.kmps: 1731.46,
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
