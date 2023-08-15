import 'package:freezed_annotation/freezed_annotation.dart';

import 'unit.dart';

part 'value_range.freezed.dart';

@freezed
class ValueRange<V, U extends Unit> with _$ValueRange<V, U> {
  const factory ValueRange({
    ValueUnit<V, U>? start,
    ValueUnit<V, U>? end,
  }) = _ValueRange<V, U>;
}
