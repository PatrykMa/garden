import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_type.freezed.dart';

@freezed
abstract class PlantType implements _$PlantType{

  const factory PlantType({
    required String name,
}) = _PlantType;

  const PlantType._();
}
