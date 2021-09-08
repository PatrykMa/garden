import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:garden/domain/core/failures.dart';
import 'package:garden/domain/plant/value_objects.dart';

part 'plant_type.freezed.dart';

@freezed
abstract class PlantType implements _$PlantType{

  const factory PlantType({
    required PlantTypeName name,
}) = _PlantType;

  const PlantType._();

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((f) => some(f), (_) => none());
  }
}
