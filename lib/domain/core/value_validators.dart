import 'package:dartz/dartz.dart';

import 'failures.dart';


Either<ValueFailure<String>, String> validateStringNotEmpty(String value) {
  if (value.isNotEmpty) {
    return right(value);
  }
  return left(ValueFailure.empty(failedValue: value));
}

Either<ValueFailure<String>, String> validateStringMaxLength(String value, int maxLength) {
  if (value.length <= maxLength) {
    return right(value);
  }
  return left(ValueFailure.toLong(failedValue: value));
}
