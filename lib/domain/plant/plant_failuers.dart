


import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_failuers.freezed.dart';
@freezed
abstract class PlantFailure  implements _$PlantFailure {
const factory PlantFailure.unexpected() = _Unexpected;

}