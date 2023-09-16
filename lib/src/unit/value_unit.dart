import 'package:freezed_annotation/freezed_annotation.dart';

import 'unit.dart';

part 'value_unit.freezed.dart';

@freezed
class ValueUnit<V, U extends Unit> with _$ValueUnit<V, U> {
  const ValueUnit._();

  const factory ValueUnit({
    required V value,
    required U unit,
  }) = _ValueUnit<V, U>;

  String toCompactString() => '$value${unit.symbol}';

  String toDisplayString() => '$value ${unit.symbol}';
}
