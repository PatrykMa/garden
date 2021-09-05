import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:garden/domain/plant/plant_type.dart';
import 'package:garden/domain/plant/value_objects.dart';

part 'plant.freezed.dart';

@freezed
abstract class Plant implements _$Plant{

  const factory Plant({
    required PlantName name,
    required PlantType type,
    required DateTime plantTime,
  }) = _Plant;

  const Plant._();
}