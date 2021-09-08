import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:garden/domain/plant/i_plant_repository.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant_failuers.dart';
import 'package:garden/domain/plant/plant_filter.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'plant_list_event.dart';

part 'plant_list_state.dart';

part 'plant_list_bloc.freezed.dart';

@injectable
class PlantListBloc extends Bloc<PlantListEvent, PlantListState> {
  static const int _perPage = 10;
  final IPlantRepository _plantRepository;
  int _actualPage = 0;
  PlantFilter _filter = PlantFilter.empty();
  BuiltList<Plant> _plants = BuiltList();

  PlantListBloc(this._plantRepository) : super(const PlantListState.initial());

  @override
  Stream<PlantListState> mapEventToState(
    PlantListEvent event,
  ) async* {
    yield* event.map(
      loadMore: _loadMoreEvent,
      setFilter: _setFilterEvent,
      refresh: _refreshEvent,
    );
  }

  Stream<PlantListState> _loadMoreEvent(_LoadMore event) async* {
    yield (await _plantRepository.loadNextPlants(
      _actualPage * _perPage,
      _perPage,
      _filter,
    ))
        .fold((l) => PlantListState.loadFailure(l), (r) {
      if (r.isEmpty) {
        return PlantListState.loadSuccess(_plants, true, _filter);
      }
      _actualPage++;
      _plants += r;
      return PlantListState.loadSuccess(_plants, false, _filter);
    });
  }

  Stream<PlantListState> _setFilterEvent(_SetFilter event) async* {
    _filter = event.plantFilter;
    add(const PlantListEvent.refresh());
  }

  void _resetPage(){

    _actualPage = 0;
    _plants = BuiltList();
  }

  Stream<PlantListState> _refreshEvent(_Refresh event) async* {
    _resetPage();
    add(const PlantListEvent.loadMore());
  }
}
