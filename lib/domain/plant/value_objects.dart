import 'package:dartz/dartz.dart';
import 'package:garden/domain/core/failures.dart';
import 'package:garden/domain/core/value_objects.dart';
import 'package:garden/domain/core/value_validators.dart';

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
