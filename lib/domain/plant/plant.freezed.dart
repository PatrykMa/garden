// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlantTearOff {
  const _$PlantTearOff();

  _Plant call(
      {required UniqueId id,
      required PlantName name,
      required PlantType type,
      required DateTime plantTime}) {
    return _Plant(
      id: id,
      name: name,
      type: type,
      plantTime: plantTime,
    );
  }
}

/// @nodoc
const $Plant = _$PlantTearOff();

/// @nodoc
mixin _$Plant {
  UniqueId get id => throw _privateConstructorUsedError;
  PlantName get name => throw _privateConstructorUsedError;
  PlantType get type => throw _privateConstructorUsedError;
  DateTime get plantTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantCopyWith<Plant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantCopyWith<$Res> {
  factory $PlantCopyWith(Plant value, $Res Function(Plant) then) =
      _$PlantCopyWithImpl<$Res>;
  $Res call({UniqueId id, PlantName name, PlantType type, DateTime plantTime});

  $PlantTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$PlantCopyWithImpl<$Res> implements $PlantCopyWith<$Res> {
  _$PlantCopyWithImpl(this._value, this._then);

  final Plant _value;
  // ignore: unused_field
  final $Res Function(Plant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? plantTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as PlantName,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlantType,
      plantTime: plantTime == freezed
          ? _value.plantTime
          : plantTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $PlantTypeCopyWith<$Res> get type {
    return $PlantTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$PlantCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory _$PlantCopyWith(_Plant value, $Res Function(_Plant) then) =
      __$PlantCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, PlantName name, PlantType type, DateTime plantTime});

  @override
  $PlantTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$PlantCopyWithImpl<$Res> extends _$PlantCopyWithImpl<$Res>
    implements _$PlantCopyWith<$Res> {
  __$PlantCopyWithImpl(_Plant _value, $Res Function(_Plant) _then)
      : super(_value, (v) => _then(v as _Plant));

  @override
  _Plant get _value => super._value as _Plant;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? plantTime = freezed,
  }) {
    return _then(_Plant(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as PlantName,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlantType,
      plantTime: plantTime == freezed
          ? _value.plantTime
          : plantTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Plant extends _Plant {
  const _$_Plant(
      {required this.id,
      required this.name,
      required this.type,
      required this.plantTime})
      : super._();

  @override
  final UniqueId id;
  @override
  final PlantName name;
  @override
  final PlantType type;
  @override
  final DateTime plantTime;

  @override
  String toString() {
    return 'Plant(id: $id, name: $name, type: $type, plantTime: $plantTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Plant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.plantTime, plantTime) ||
                const DeepCollectionEquality()
                    .equals(other.plantTime, plantTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(plantTime);

  @JsonKey(ignore: true)
  @override
  _$PlantCopyWith<_Plant> get copyWith =>
      __$PlantCopyWithImpl<_Plant>(this, _$identity);
}

abstract class _Plant extends Plant {
  const factory _Plant(
      {required UniqueId id,
      required PlantName name,
      required PlantType type,
      required DateTime plantTime}) = _$_Plant;
  const _Plant._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  PlantName get name => throw _privateConstructorUsedError;
  @override
  PlantType get type => throw _privateConstructorUsedError;
  @override
  DateTime get plantTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlantCopyWith<_Plant> get copyWith => throw _privateConstructorUsedError;
}
