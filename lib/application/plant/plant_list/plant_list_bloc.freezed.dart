// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plant_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlantListEventTearOff {
  const _$PlantListEventTearOff();

  _LoadMore loadMore() {
    return const _LoadMore();
  }

  _Refresh refresh() {
    return const _Refresh();
  }

  _SetFilter setFilter(PlantFilter plantFilter) {
    return _SetFilter(
      plantFilter,
    );
  }
}

/// @nodoc
const $PlantListEvent = _$PlantListEventTearOff();

/// @nodoc
mixin _$PlantListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(PlantFilter plantFilter) setFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(PlantFilter plantFilter)? setFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SetFilter value) setFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SetFilter value)? setFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantListEventCopyWith<$Res> {
  factory $PlantListEventCopyWith(
          PlantListEvent value, $Res Function(PlantListEvent) then) =
      _$PlantListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlantListEventCopyWithImpl<$Res>
    implements $PlantListEventCopyWith<$Res> {
  _$PlantListEventCopyWithImpl(this._value, this._then);

  final PlantListEvent _value;
  // ignore: unused_field
  final $Res Function(PlantListEvent) _then;
}

/// @nodoc
abstract class _$LoadMoreCopyWith<$Res> {
  factory _$LoadMoreCopyWith(_LoadMore value, $Res Function(_LoadMore) then) =
      __$LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMoreCopyWithImpl<$Res> extends _$PlantListEventCopyWithImpl<$Res>
    implements _$LoadMoreCopyWith<$Res> {
  __$LoadMoreCopyWithImpl(_LoadMore _value, $Res Function(_LoadMore) _then)
      : super(_value, (v) => _then(v as _LoadMore));

  @override
  _LoadMore get _value => super._value as _LoadMore;
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore();

  @override
  String toString() {
    return 'PlantListEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(PlantFilter plantFilter) setFilter,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(PlantFilter plantFilter)? setFilter,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SetFilter value) setFilter,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SetFilter value)? setFilter,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements PlantListEvent {
  const factory _LoadMore() = _$_LoadMore;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$PlantListEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'PlantListEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(PlantFilter plantFilter) setFilter,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(PlantFilter plantFilter)? setFilter,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SetFilter value) setFilter,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SetFilter value)? setFilter,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements PlantListEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$SetFilterCopyWith<$Res> {
  factory _$SetFilterCopyWith(
          _SetFilter value, $Res Function(_SetFilter) then) =
      __$SetFilterCopyWithImpl<$Res>;
  $Res call({PlantFilter plantFilter});

  $PlantFilterCopyWith<$Res> get plantFilter;
}

/// @nodoc
class __$SetFilterCopyWithImpl<$Res> extends _$PlantListEventCopyWithImpl<$Res>
    implements _$SetFilterCopyWith<$Res> {
  __$SetFilterCopyWithImpl(_SetFilter _value, $Res Function(_SetFilter) _then)
      : super(_value, (v) => _then(v as _SetFilter));

  @override
  _SetFilter get _value => super._value as _SetFilter;

  @override
  $Res call({
    Object? plantFilter = freezed,
  }) {
    return _then(_SetFilter(
      plantFilter == freezed
          ? _value.plantFilter
          : plantFilter // ignore: cast_nullable_to_non_nullable
              as PlantFilter,
    ));
  }

  @override
  $PlantFilterCopyWith<$Res> get plantFilter {
    return $PlantFilterCopyWith<$Res>(_value.plantFilter, (value) {
      return _then(_value.copyWith(plantFilter: value));
    });
  }
}

/// @nodoc

class _$_SetFilter implements _SetFilter {
  const _$_SetFilter(this.plantFilter);

  @override
  final PlantFilter plantFilter;

  @override
  String toString() {
    return 'PlantListEvent.setFilter(plantFilter: $plantFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetFilter &&
            (identical(other.plantFilter, plantFilter) ||
                const DeepCollectionEquality()
                    .equals(other.plantFilter, plantFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(plantFilter);

  @JsonKey(ignore: true)
  @override
  _$SetFilterCopyWith<_SetFilter> get copyWith =>
      __$SetFilterCopyWithImpl<_SetFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(PlantFilter plantFilter) setFilter,
  }) {
    return setFilter(plantFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(PlantFilter plantFilter)? setFilter,
    required TResult orElse(),
  }) {
    if (setFilter != null) {
      return setFilter(plantFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SetFilter value) setFilter,
  }) {
    return setFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SetFilter value)? setFilter,
    required TResult orElse(),
  }) {
    if (setFilter != null) {
      return setFilter(this);
    }
    return orElse();
  }
}

abstract class _SetFilter implements PlantListEvent {
  const factory _SetFilter(PlantFilter plantFilter) = _$_SetFilter;

  PlantFilter get plantFilter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetFilterCopyWith<_SetFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlantListStateTearOff {
  const _$PlantListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(
      BuiltList<Plant> plant, bool loadAllData, PlantFilter filter) {
    return _LoadSuccess(
      plant,
      loadAllData,
      filter,
    );
  }

  _LoadFailure loadFailure(PlantFailure noteFailure) {
    return _LoadFailure(
      noteFailure,
    );
  }
}

/// @nodoc
const $PlantListState = _$PlantListStateTearOff();

/// @nodoc
mixin _$PlantListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)
        loadSuccess,
    required TResult Function(PlantFailure noteFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)?
        loadSuccess,
    TResult Function(PlantFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantListStateCopyWith<$Res> {
  factory $PlantListStateCopyWith(
          PlantListState value, $Res Function(PlantListState) then) =
      _$PlantListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlantListStateCopyWithImpl<$Res>
    implements $PlantListStateCopyWith<$Res> {
  _$PlantListStateCopyWithImpl(this._value, this._then);

  final PlantListState _value;
  // ignore: unused_field
  final $Res Function(PlantListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PlantListStateCopyWithImpl<$Res>
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
    return 'PlantListState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)
        loadSuccess,
    required TResult Function(PlantFailure noteFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)?
        loadSuccess,
    TResult Function(PlantFailure noteFailure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlantListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PlantListStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'PlantListState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)
        loadSuccess,
    required TResult Function(PlantFailure noteFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)?
        loadSuccess,
    TResult Function(PlantFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PlantListState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Plant> plant, bool loadAllData, PlantFilter filter});

  $PlantFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PlantListStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? plant = freezed,
    Object? loadAllData = freezed,
    Object? filter = freezed,
  }) {
    return _then(_LoadSuccess(
      plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as BuiltList<Plant>,
      loadAllData == freezed
          ? _value.loadAllData
          : loadAllData // ignore: cast_nullable_to_non_nullable
              as bool,
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as PlantFilter,
    ));
  }

  @override
  $PlantFilterCopyWith<$Res> get filter {
    return $PlantFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.plant, this.loadAllData, this.filter);

  @override
  final BuiltList<Plant> plant;
  @override
  final bool loadAllData;
  @override
  final PlantFilter filter;

  @override
  String toString() {
    return 'PlantListState.loadSuccess(plant: $plant, loadAllData: $loadAllData, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.loadAllData, loadAllData) ||
                const DeepCollectionEquality()
                    .equals(other.loadAllData, loadAllData)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(loadAllData) ^
      const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)
        loadSuccess,
    required TResult Function(PlantFailure noteFailure) loadFailure,
  }) {
    return loadSuccess(plant, loadAllData, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)?
        loadSuccess,
    TResult Function(PlantFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(plant, loadAllData, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PlantListState {
  const factory _LoadSuccess(
          BuiltList<Plant> plant, bool loadAllData, PlantFilter filter) =
      _$_LoadSuccess;

  BuiltList<Plant> get plant => throw _privateConstructorUsedError;
  bool get loadAllData => throw _privateConstructorUsedError;
  PlantFilter get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({PlantFailure noteFailure});

  $PlantFailureCopyWith<$Res> get noteFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PlantListStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(_LoadFailure(
      noteFailure == freezed
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as PlantFailure,
    ));
  }

  @override
  $PlantFailureCopyWith<$Res> get noteFailure {
    return $PlantFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.noteFailure);

  @override
  final PlantFailure noteFailure;

  @override
  String toString() {
    return 'PlantListState.loadFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.noteFailure, noteFailure) ||
                const DeepCollectionEquality()
                    .equals(other.noteFailure, noteFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(noteFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)
        loadSuccess,
    required TResult Function(PlantFailure noteFailure) loadFailure,
  }) {
    return loadFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            BuiltList<Plant> plant, bool loadAllData, PlantFilter filter)?
        loadSuccess,
    TResult Function(PlantFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PlantListState {
  const factory _LoadFailure(PlantFailure noteFailure) = _$_LoadFailure;

  PlantFailure get noteFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
