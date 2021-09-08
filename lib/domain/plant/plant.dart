import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:garden/domain/core/failures.dart';
import 'package:garden/domain/core/value_objects.dart';
import 'package:garden/domain/plant/plant_type.dart';
import 'package:garden/domain/plant/value_objects.dart';

part 'plant.freezed.dart';

@freezed
abstract class Plant implements _$Plant {
  const factory Plant({
    required UniqueId id,
    required PlantName name,
    required PlantType type,
    required DateTime plantTime,
  }) = _Plant;

  factory Plant.empty() => Plant(
      name: PlantName(''),
      id: UniqueId(),
      type: PlantType(name: PlantTypeName('')),
      plantTime: DateTime.now());

  const Plant._();

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(type.name.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
