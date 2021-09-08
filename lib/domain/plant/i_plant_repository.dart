
import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant_failuers.dart';
import 'package:garden/domain/plant/plant_filter.dart';
import 'package:garden/domain/plant/plant_type.dart';

abstract class IPlantRepository{

  Stream<Plant>? newPlantStream;
  Future<Either<PlantFailure, BuiltList<Plant>>> loadNextPlants(int from, int count, PlantFilter filters);
  Future<Either<PlantFailure, BuiltList<PlantType>>> loadPlantType();
  Future<Either<PlantFailure, Unit>> create(Plant plant);
  Future<Either<PlantFailure, Unit>> update(Plant plant);
  Future<Either<PlantFailure, Unit>> delete(Plant plant);

}