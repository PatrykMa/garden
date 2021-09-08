// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plant_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlantTypeTearOff {
  const _$PlantTypeTearOff();

  _PlantType call({required PlantTypeName name}) {
    return _PlantType(
      name: name,
    );
  }
}

/// @nodoc
const $PlantType = _$PlantTypeTearOff();

/// @nodoc
mixin _$PlantType {
  PlantTypeName get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantTypeCopyWith<PlantType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantTypeCopyWith<$Res> {
  factory $PlantTypeCopyWith(PlantType value, $Res Function(PlantType) then) =
      _$PlantTypeCopyWithImpl<$Res>;
  $Res call({PlantTypeName name});
}

/// @nodoc
class _$PlantTypeCopyWithImpl<$Res> implements $PlantTypeCopyWith<$Res> {
  _$PlantTypeCopyWithImpl(this._value, this._then);

  final PlantType _value;
  // ignore: unused_field
  final $Res Function(PlantType) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as PlantTypeName,
    ));
  }
}

/// @nodoc
abstract class _$PlantTypeCopyWith<$Res> implements $PlantTypeCopyWith<$Res> {
  factory _$PlantTypeCopyWith(
          _PlantType value, $Res Function(_PlantType) then) =
      __$PlantTypeCopyWithImpl<$Res>;
  @override
  $Res call({PlantTypeName name});
}

/// @nodoc
class __$PlantTypeCopyWithImpl<$Res> extends _$PlantTypeCopyWithImpl<$Res>
    implements _$PlantTypeCopyWith<$Res> {
  __$PlantTypeCopyWithImpl(_PlantType _value, $Res Function(_PlantType) _then)
      : super(_value, (v) => _then(v as _PlantType));

  @override
  _PlantType get _value => super._value as _PlantType;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_PlantType(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as PlantTypeName,
    ));
  }
}

/// @nodoc

class _$_PlantType extends _PlantType {
  const _$_PlantType({required this.name}) : super._();

  @override
  final PlantTypeName name;

  @override
  String toString() {
    return 'PlantType(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlantType &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$PlantTypeCopyWith<_PlantType> get copyWith =>
      __$PlantTypeCopyWithImpl<_PlantType>(this, _$identity);
}

abstract class _PlantType extends PlantType {
  const factory _PlantType({required PlantTypeName name}) = _$_PlantType;
  const _PlantType._() : super._();

  @override
  PlantTypeName get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlantTypeCopyWith<_PlantType> get copyWith =>
      throw _privateConstructorUsedError;
}
