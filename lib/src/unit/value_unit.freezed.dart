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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ValueUnitCopyWith<V, U extends Unit, $Res>
    implements $ValueUnitCopyWith<V, U, $Res> {
  factory _$$_ValueUnitCopyWith(
          _$_ValueUnit<V, U> value, $Res Function(_$_ValueUnit<V, U>) then) =
      __$$_ValueUnitCopyWithImpl<V, U, $Res>;
  @override
  @useResult
  $Res call({V value, U unit});
}

/// @nodoc
class __$$_ValueUnitCopyWithImpl<V, U extends Unit, $Res>
    extends _$ValueUnitCopyWithImpl<V, U, $Res, _$_ValueUnit<V, U>>
    implements _$$_ValueUnitCopyWith<V, U, $Res> {
  __$$_ValueUnitCopyWithImpl(
      _$_ValueUnit<V, U> _value, $Res Function(_$_ValueUnit<V, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = null,
  }) {
    return _then(_$_ValueUnit<V, U>(
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

class _$_ValueUnit<V, U extends Unit> extends _ValueUnit<V, U> {
  const _$_ValueUnit({required this.value, required this.unit}) : super._();

  @override
  final V value;
  @override
  final U unit;

  @override
  String toString() {
    return 'ValueUnit<$V, $U>(value: $value, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValueUnit<V, U> &&
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
  _$$_ValueUnitCopyWith<V, U, _$_ValueUnit<V, U>> get copyWith =>
      __$$_ValueUnitCopyWithImpl<V, U, _$_ValueUnit<V, U>>(this, _$identity);
}

abstract class _ValueUnit<V, U extends Unit> extends ValueUnit<V, U> {
  const factory _ValueUnit({required final V value, required final U unit}) =
      _$_ValueUnit<V, U>;
  const _ValueUnit._() : super._();

  @override
  V get value;
  @override
  U get unit;
  @override
  @JsonKey(ignore: true)
  _$$_ValueUnitCopyWith<V, U, _$_ValueUnit<V, U>> get copyWith =>
      throw _privateConstructorUsedError;
}
