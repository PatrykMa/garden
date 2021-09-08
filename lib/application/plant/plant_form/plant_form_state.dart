part of 'plant_form_bloc.dart';

@freezed
abstract class PlantFormState with _$PlantFormState {
  const factory PlantFormState({
    required Plant plant,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required BuiltList<PlantType> plantTypes,
    required Option<Either<PlantFailure, Unit>> saveFailureOrSuccessOption,
    required Option<Either<PlantFailure, Unit>> loadTypesFailureOrSuccessOption,
  }) = _PlantFormState;

  factory PlantFormState.initial() => PlantFormState(
    plant: Plant.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    plantTypes: BuiltList(),
    saveFailureOrSuccessOption: none(),
    loadTypesFailureOrSuccessOption: none(),
  );
}
