part of 'plant_list_bloc.dart';

@freezed
abstract class PlantListState with _$PlantListState {
  const factory PlantListState.initial() = _Initial;
  const factory PlantListState.loadInProgress() = _LoadInProgress;
  const factory PlantListState.loadSuccess(
    BuiltList<Plant> plant,
    bool loadAllData,
    PlantFilter filter,
  ) = _LoadSuccess;

  const factory PlantListState.loadFailure(PlantFailure noteFailure) =
      _LoadFailure;
}
