part of 'plant_observer_bloc.dart';

@freezed
abstract class PlantObserverEvent with _$PlantObserverEvent {
  const factory PlantObserverEvent.newPlantEvent(Plant plant) = _NewPlantEvent;

}
