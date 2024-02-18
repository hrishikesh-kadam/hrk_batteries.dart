// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueUnit<V, U extends Unit> {
  V get value => throw _privateConstructorUsedError;
  U get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueUnitCopyWith<V, U, ValueUnit<V, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueUnitCopyWith<V, U extends Unit, $Res> {
  factory $ValueUnitCopyWith(
          ValueUnit<V, U> value, $Res Function(ValueUnit<V, U>) then) =
      _$ValueUnitCopyWithImpl<V, U, $Res, ValueUnit<V, U>>;
  @useResult
  $Res call({V value, U unit});
}

/// @nodoc
class _$ValueUnitCopyWithImpl<V, U extends Unit, $Res,
    $Val extends ValueUnit<V, U>> implements $ValueUnitCopyWith<V, U, $Res> {
  _$ValueUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as V,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as U,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueUnitImplCopyWith<V, U extends Unit, $Res>
    implements $ValueUnitCopyWith<V, U, $Res> {
  factory _$$ValueUnitImplCopyWith(_$ValueUnitImpl<V, U> value,
          $Res Function(_$ValueUnitImpl<V, U>) then) =
      __$$ValueUnitImplCopyWithImpl<V, U, $Res>;
  @override
  @useResult
  $Res call({V value, U unit});
}

/// @nodoc
class __$$ValueUnitImplCopyWithImpl<V, U extends Unit, $Res>
    extends _$ValueUnitCopyWithImpl<V, U, $Res, _$ValueUnitImpl<V, U>>
    implements _$$ValueUnitImplCopyWith<V, U, $Res> {
  __$$ValueUnitImplCopyWithImpl(
      _$ValueUnitImpl<V, U> _value, $Res Function(_$ValueUnitImpl<V, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = null,
  }) {
    return _then(_$ValueUnitImpl<V, U>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as V,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as U,
    ));
  }
}

/// @nodoc

class _$ValueUnitImpl<V, U extends Unit> extends _ValueUnit<V, U> {
  const _$ValueUnitImpl({required this.value, required this.unit}) : super._();

  @override
  final V value;
  @override
  final U unit;

  @override
  String toString() {
    return 'ValueUnit<$V, $U>(value: $value, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueUnitImpl<V, U> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueUnitImplCopyWith<V, U, _$ValueUnitImpl<V, U>> get copyWith =>
      __$$ValueUnitImplCopyWithImpl<V, U, _$ValueUnitImpl<V, U>>(
          this, _$identity);
}

abstract class _ValueUnit<V, U extends Unit> extends ValueUnit<V, U> {
  const factory _ValueUnit({required final V value, required final U unit}) =
      _$ValueUnitImpl<V, U>;
  const _ValueUnit._() : super._();

  @override
  V get value;
  @override
  U get unit;
  @override
  @JsonKey(ignore: true)
  _$$ValueUnitImplCopyWith<V, U, _$ValueUnitImpl<V, U>> get copyWith =>
      throw _privateConstructorUsedError;
}
