import 'package:freezed_annotation/freezed_annotation.dart';

import 'unit.dart';

part 'value_unit.freezed.dart';

@freezed
class ValueUnit<V, U extends Unit> with _$ValueUnit<V, U> {
  const ValueUnit._();

  const factory ValueUnit({
    V? value,
    U? unit,
  }) = _ValueUnit<V, U>;

  String toCompactString() {
    if (value != null) {
      String displayString = value!.toString();
      if (unit != null) {
        displayString += unit!.symbol;
      }
      return displayString;
    }
    return '';
  }

  String toDisplayString() {
    if (value != null) {
      String displayString = value!.toString();
      if (unit != null) {
        displayString += ' ${unit!.symbol}';
      }
      return displayString;
    }
    return '';
  }
}
