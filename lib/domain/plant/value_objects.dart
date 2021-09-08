import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:garden/domain/core/failures.dart';
import 'package:garden/domain/core/value_objects.dart';
import 'package:garden/domain/core/value_validators.dart';
import 'package:garden/domain/plant/plant_failuers.dart';
import 'package:garden/domain/plant/plant_type.dart';

class PlantName extends ValueObject<String> {
  static const int maxLength = 50;

  @override
  final Either<ValueFailure<String>, String> value;

  factory PlantName(String name) {
    return PlantName._(
      validateStringMaxLength(name, maxLength).flatMap(validateStringNotEmpty),
    );
  }
  const PlantName._(this.value);
}


class PlantTypeName extends ValueObject<String>{

  @override
  final Either<ValueFailure<String>, String> value;

  factory PlantTypeName(String name) {
    return PlantTypeName._(
      right(name),
    );
  }

  const PlantTypeName._(this.value);
}

