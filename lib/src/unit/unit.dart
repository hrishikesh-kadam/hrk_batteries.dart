import 'package:equatable/equatable.dart';

export 'distance.dart';
export 'value_range.dart';
export 'value_unit.dart';

class Unit with EquatableMixin {
  const Unit({
    required this.symbol,
  });

  final String symbol;

  @override
  List<Object?> get props => [symbol];
}
