// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueRange<V, U extends Unit> {
  ValueUnit<V, U> get start => throw _privateConstructorUsedError;
  ValueUnit<V, U> get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueRangeCopyWith<V, U, ValueRange<V, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueRangeCopyWith<V, U extends Unit, $Res> {
  factory $ValueRangeCopyWith(
          ValueRange<V, U> value, $Res Function(ValueRange<V, U>) then) =
      _$ValueRangeCopyWithImpl<V, U, $Res, ValueRange<V, U>>;
  @useResult
  $Res call({ValueUnit<V, U> start, ValueUnit<V, U> end});

  $ValueUnitCopyWith<V, U, $Res> get start;
  $ValueUnitCopyWith<V, U, $Res> get end;
}

/// @nodoc
class _$ValueRangeCopyWithImpl<V, U extends Unit, $Res,
    $Val extends ValueRange<V, U>> implements $ValueRangeCopyWith<V, U, $Res> {
  _$ValueRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as ValueUnit<V, U>,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as ValueUnit<V, U>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<V, U, $Res> get start {
    return $ValueUnitCopyWith<V, U, $Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<V, U, $Res> get end {
    return $ValueUnitCopyWith<V, U, $Res>(_value.end, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValueRangeImplCopyWith<V, U extends Unit, $Res>
    implements $ValueRangeCopyWith<V, U, $Res> {
  factory _$$ValueRangeImplCopyWith(_$ValueRangeImpl<V, U> value,
          $Res Function(_$ValueRangeImpl<V, U>) then) =
      __$$ValueRangeImplCopyWithImpl<V, U, $Res>;
  @override
  @useResult
  $Res call({ValueUnit<V, U> start, ValueUnit<V, U> end});

  @override
  $ValueUnitCopyWith<V, U, $Res> get start;
  @override
  $ValueUnitCopyWith<V, U, $Res> get end;
}

/// @nodoc
class __$$ValueRangeImplCopyWithImpl<V, U extends Unit, $Res>
    extends _$ValueRangeCopyWithImpl<V, U, $Res, _$ValueRangeImpl<V, U>>
    implements _$$ValueRangeImplCopyWith<V, U, $Res> {
  __$$ValueRangeImplCopyWithImpl(_$ValueRangeImpl<V, U> _value,
      $Res Function(_$ValueRangeImpl<V, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$ValueRangeImpl<V, U>(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as ValueUnit<V, U>,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as ValueUnit<V, U>,
    ));
  }
}

/// @nodoc

class _$ValueRangeImpl<V, U extends Unit> implements _ValueRange<V, U> {
  const _$ValueRangeImpl({required this.start, required this.end});

  @override
  final ValueUnit<V, U> start;
  @override
  final ValueUnit<V, U> end;

  @override
  String toString() {
    return 'ValueRange<$V, $U>(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueRangeImpl<V, U> &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueRangeImplCopyWith<V, U, _$ValueRangeImpl<V, U>> get copyWith =>
      __$$ValueRangeImplCopyWithImpl<V, U, _$ValueRangeImpl<V, U>>(
          this, _$identity);
}

abstract class _ValueRange<V, U extends Unit> implements ValueRange<V, U> {
  const factory _ValueRange(
      {required final ValueUnit<V, U> start,
      required final ValueUnit<V, U> end}) = _$ValueRangeImpl<V, U>;

  @override
  ValueUnit<V, U> get start;
  @override
  ValueUnit<V, U> get end;
  @override
  @JsonKey(ignore: true)
  _$$ValueRangeImplCopyWith<V, U, _$ValueRangeImpl<V, U>> get copyWith =>
      throw _privateConstructorUsedError;
}
