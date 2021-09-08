part of 'plant_list_bloc.dart';

@freezed
abstract class PlantListEvent with _$PlantListEvent {
  const factory PlantListEvent.loadMore() = _LoadMore;
  const factory PlantListEvent.refresh() = _Refresh;
  const factory PlantListEvent.setFilter(PlantFilter plantFilter) = _SetFilter;
}
