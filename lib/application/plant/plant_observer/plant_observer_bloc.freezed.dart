// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plant_observer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlantObserverEventTearOff {
  const _$PlantObserverEventTearOff();

  _NewPlantEvent newPlantEvent(Plant plant) {
    return _NewPlantEvent(
      plant,
    );
  }
}

/// @nodoc
const $PlantObserverEvent = _$PlantObserverEventTearOff();

/// @nodoc
mixin _$PlantObserverEvent {
  Plant get plant => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plant plant) newPlantEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plant plant)? newPlantEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewPlantEvent value) newPlantEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewPlantEvent value)? newPlantEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantObserverEventCopyWith<PlantObserverEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantObserverEventCopyWith<$Res> {
  factory $PlantObserverEventCopyWith(
          PlantObserverEvent value, $Res Function(PlantObserverEvent) then) =
      _$PlantObserverEventCopyWithImpl<$Res>;
  $Res call({Plant plant});

  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class _$PlantObserverEventCopyWithImpl<$Res>
    implements $PlantObserverEventCopyWith<$Res> {
  _$PlantObserverEventCopyWithImpl(this._value, this._then);

  final PlantObserverEvent _value;
  // ignore: unused_field
  final $Res Function(PlantObserverEvent) _then;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(_value.copyWith(
      plant: plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ));
  }

  @override
  $PlantCopyWith<$Res> get plant {
    return $PlantCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc
abstract class _$NewPlantEventCopyWith<$Res>
    implements $PlantObserverEventCopyWith<$Res> {
  factory _$NewPlantEventCopyWith(
          _NewPlantEvent value, $Res Function(_NewPlantEvent) then) =
      __$NewPlantEventCopyWithImpl<$Res>;
  @override
  $Res call({Plant plant});

  @override
  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class __$NewPlantEventCopyWithImpl<$Res>
    extends _$PlantObserverEventCopyWithImpl<$Res>
    implements _$NewPlantEventCopyWith<$Res> {
  __$NewPlantEventCopyWithImpl(
      _NewPlantEvent _value, $Res Function(_NewPlantEvent) _then)
      : super(_value, (v) => _then(v as _NewPlantEvent));

  @override
  _NewPlantEvent get _value => super._value as _NewPlantEvent;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(_NewPlantEvent(
      plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ));
  }
}

/// @nodoc

class _$_NewPlantEvent implements _NewPlantEvent {
  const _$_NewPlantEvent(this.plant);

  @override
  final Plant plant;

  @override
  String toString() {
    return 'PlantObserverEvent.newPlantEvent(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewPlantEvent &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(plant);

  @JsonKey(ignore: true)
  @override
  _$NewPlantEventCopyWith<_NewPlantEvent> get copyWith =>
      __$NewPlantEventCopyWithImpl<_NewPlantEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plant plant) newPlantEvent,
  }) {
    return newPlantEvent(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plant plant)? newPlantEvent,
    required TResult orElse(),
  }) {
    if (newPlantEvent != null) {
      return newPlantEvent(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewPlantEvent value) newPlantEvent,
  }) {
    return newPlantEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewPlantEvent value)? newPlantEvent,
    required TResult orElse(),
  }) {
    if (newPlantEvent != null) {
      return newPlantEvent(this);
    }
    return orElse();
  }
}

abstract class _NewPlantEvent implements PlantObserverEvent {
  const factory _NewPlantEvent(Plant plant) = _$_NewPlantEvent;

  @override
  Plant get plant => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewPlantEventCopyWith<_NewPlantEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlantObserverStateTearOff {
  const _$PlantObserverStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _NewPlant newPlant(Plant plant) {
    return _NewPlant(
      plant,
    );
  }
}

/// @nodoc
const $PlantObserverState = _$PlantObserverStateTearOff();

/// @nodoc
mixin _$PlantObserverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Plant plant) newPlant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Plant plant)? newPlant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewPlant value) newPlant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewPlant value)? newPlant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantObserverStateCopyWith<$Res> {
  factory $PlantObserverStateCopyWith(
          PlantObserverState value, $Res Function(PlantObserverState) then) =
      _$PlantObserverStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlantObserverStateCopyWithImpl<$Res>
    implements $PlantObserverStateCopyWith<$Res> {
  _$PlantObserverStateCopyWithImpl(this._value, this._then);

  final PlantObserverState _value;
  // ignore: unused_field
  final $Res Function(PlantObserverState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PlantObserverStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PlantObserverState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Plant plant) newPlant,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Plant plant)? newPlant,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewPlant value) newPlant,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewPlant value)? newPlant,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlantObserverState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$NewPlantCopyWith<$Res> {
  factory _$NewPlantCopyWith(_NewPlant value, $Res Function(_NewPlant) then) =
      __$NewPlantCopyWithImpl<$Res>;
  $Res call({Plant plant});

  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class __$NewPlantCopyWithImpl<$Res>
    extends _$PlantObserverStateCopyWithImpl<$Res>
    implements _$NewPlantCopyWith<$Res> {
  __$NewPlantCopyWithImpl(_NewPlant _value, $Res Function(_NewPlant) _then)
      : super(_value, (v) => _then(v as _NewPlant));

  @override
  _NewPlant get _value => super._value as _NewPlant;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(_NewPlant(
      plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ));
  }

  @override
  $PlantCopyWith<$Res> get plant {
    return $PlantCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc

class _$_NewPlant implements _NewPlant {
  const _$_NewPlant(this.plant);

  @override
  final Plant plant;

  @override
  String toString() {
    return 'PlantObserverState.newPlant(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewPlant &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(plant);

  @JsonKey(ignore: true)
  @override
  _$NewPlantCopyWith<_NewPlant> get copyWith =>
      __$NewPlantCopyWithImpl<_NewPlant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Plant plant) newPlant,
  }) {
    return newPlant(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Plant plant)? newPlant,
    required TResult orElse(),
  }) {
    if (newPlant != null) {
      return newPlant(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewPlant value) newPlant,
  }) {
    return newPlant(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewPlant value)? newPlant,
    required TResult orElse(),
  }) {
    if (newPlant != null) {
      return newPlant(this);
    }
    return orElse();
  }
}

abstract class _NewPlant implements PlantObserverState {
  const factory _NewPlant(Plant plant) = _$_NewPlant;

  Plant get plant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NewPlantCopyWith<_NewPlant> get copyWith =>
      throw _privateConstructorUsedError;
}
