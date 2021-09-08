part of 'plant_observer_bloc.dart';

@freezed
abstract class PlantObserverState with _$PlantObserverState {
  const factory PlantObserverState.initial() = _Initial;
  const factory PlantObserverState.newPlant(Plant plant) = _NewPlant;
}