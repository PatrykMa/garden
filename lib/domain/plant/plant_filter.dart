import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_filter.freezed.dart';

@freezed
abstract class PlantFilter implements _$PlantFilter {

  const factory PlantFilter({
    required String nameContain,
  }) = _PlantFilter;

  const PlantFilter._();
}
