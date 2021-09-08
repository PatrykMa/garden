import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:garden/domain/plant/i_plant_repository.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'plant_observer_event.dart';

part 'plant_observer_state.dart';

part 'plant_observer_bloc.freezed.dart';

@injectable
class PlantObserverBloc extends Bloc<PlantObserverEvent, PlantObserverState> {
  final IPlantRepository _plantRepository;

  PlantObserverBloc(this._plantRepository)
      : super(const PlantObserverState.initial()){
    _plantRepository.newPlantStream?.listen((event) {
      add(PlantObserverEvent.newPlantEvent(event));
    });
  }

  @override
  Stream<PlantObserverState> mapEventToState(
    PlantObserverEvent event,
  ) async* {
    yield* event.map(newPlantEvent: (e)async*{
      yield PlantObserverState.newPlant(e.plant);
      yield const PlantObserverState.initial();
    });
  }
}
