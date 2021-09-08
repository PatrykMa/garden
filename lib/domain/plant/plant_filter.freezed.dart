// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plant_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlantFilterTearOff {
  const _$PlantFilterTearOff();

  _PlantFilter call({required String nameContain}) {
    return _PlantFilter(
      nameContain: nameContain,
    );
  }
}

/// @nodoc
const $PlantFilter = _$PlantFilterTearOff();

/// @nodoc
mixin _$PlantFilter {
  String get nameContain => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantFilterCopyWith<PlantFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantFilterCopyWith<$Res> {
  factory $PlantFilterCopyWith(
          PlantFilter value, $Res Function(PlantFilter) then) =
      _$PlantFilterCopyWithImpl<$Res>;
  $Res call({String nameContain});
}

/// @nodoc
class _$PlantFilterCopyWithImpl<$Res> implements $PlantFilterCopyWith<$Res> {
  _$PlantFilterCopyWithImpl(this._value, this._then);

  final PlantFilter _value;
  // ignore: unused_field
  final $Res Function(PlantFilter) _then;

  @override
  $Res call({
    Object? nameContain = freezed,
  }) {
    return _then(_value.copyWith(
      nameContain: nameContain == freezed
          ? _value.nameContain
          : nameContain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlantFilterCopyWith<$Res>
    implements $PlantFilterCopyWith<$Res> {
  factory _$PlantFilterCopyWith(
          _PlantFilter value, $Res Function(_PlantFilter) then) =
      __$PlantFilterCopyWithImpl<$Res>;
  @override
  $Res call({String nameContain});
}

/// @nodoc
class __$PlantFilterCopyWithImpl<$Res> extends _$PlantFilterCopyWithImpl<$Res>
    implements _$PlantFilterCopyWith<$Res> {
  __$PlantFilterCopyWithImpl(
      _PlantFilter _value, $Res Function(_PlantFilter) _then)
      : super(_value, (v) => _then(v as _PlantFilter));

  @override
  _PlantFilter get _value => super._value as _PlantFilter;

  @override
  $Res call({
    Object? nameContain = freezed,
  }) {
    return _then(_PlantFilter(
      nameContain: nameContain == freezed
          ? _value.nameContain
          : nameContain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlantFilter extends _PlantFilter {
  const _$_PlantFilter({required this.nameContain}) : super._();

  @override
  final String nameContain;

  @override
  String toString() {
    return 'PlantFilter(nameContain: $nameContain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlantFilter &&
            (identical(other.nameContain, nameContain) ||
                const DeepCollectionEquality()
                    .equals(other.nameContain, nameContain)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameContain);

  @JsonKey(ignore: true)
  @override
  _$PlantFilterCopyWith<_PlantFilter> get copyWith =>
      __$PlantFilterCopyWithImpl<_PlantFilter>(this, _$identity);
}

abstract class _PlantFilter extends PlantFilter {
  const factory _PlantFilter({required String nameContain}) = _$_PlantFilter;
  const _PlantFilter._() : super._();

  @override
  String get nameContain => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlantFilterCopyWith<_PlantFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
