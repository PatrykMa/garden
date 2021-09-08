part of 'plant_form_bloc.dart';

@freezed
abstract class PlantFormEvent with _$PlantFormEvent {
  const factory PlantFormEvent.loadPlantTypes() = _LoadPlantTypes;
  const factory PlantFormEvent.initialized(Option<Plant> initialPlantOption) =
      _Initialized;

  const factory PlantFormEvent.nameChanged(String name) = _NameChanged;

  const factory PlantFormEvent.typeChanged(String plantType) = _TypeChanged;

  const factory PlantFormEvent.plantTimeChanged(DateTime plantDate) =
      _PlantTimeChanged;

  const factory PlantFormEvent.saved() = _Saved;
}
