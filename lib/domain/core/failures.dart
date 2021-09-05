
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T>{
  const factory ValueFailure.empty({required T failedValue}) = EmptyName<T>;
  const factory ValueFailure.toLong({required T failedValue}) = ToLong<T>;
}
