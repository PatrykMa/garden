
import 'package:dartz/dartz.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant_failuers.dart';
import 'package:garden/domain/plant/plant_filter.dart';

abstract class IPlantRepository{

  void setFilters(PlantFilter filters);
  Future<Either<PlantFailure, List<Plant>>> loadNext(int count);

  Future<Either<PlantFailure, Unit>> create(Plant plant);
  Future<Either<PlantFailure, Unit>> update(Plant plant);
  Future<Either<PlantFailure, Unit>> delete(Plant plant);

}