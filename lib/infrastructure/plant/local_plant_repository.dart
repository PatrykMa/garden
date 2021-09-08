import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:built_collection/src/list.dart';
import 'package:dartz/dartz.dart';
import 'package:garden/domain/plant/i_plant_repository.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant_failuers.dart';
import 'package:garden/domain/plant/plant_filter.dart';
import 'package:garden/domain/plant/plant_type.dart';
import 'package:garden/infrastructure/core/database.dart';
import 'package:garden/infrastructure/plant/plant_dto.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IPlantRepository)
class LocalPlantRepository implements IPlantRepository {
  static const _initialTypesList = [
    "alpines",
    "aquatic",
    "bulbs",
    "succulents",
    "carnivorous",
    "climbers",
    "ferns",
    "grasses",
    "threes",
  ];

  final StreamController<Plant> _controller = StreamController<Plant>.broadcast(
    onListen: () {},
    onCancel: () {},
  );
  final DatabaseAccess _appDatabase;

  LocalPlantRepository(this._appDatabase) {
    newPlantStream = _controller.stream;
  }

  @override
  Future<Either<PlantFailure, Unit>> create(Plant plant) async {
    try {
      (await _dataBase()).plantDao.insertPlantDto(PlantDto.fromDomain(plant));
      return right(unit);
    } catch (e) {
      return left(const PlantFailure.unexpected());
    }
  }

  @override
  Future<Either<PlantFailure, Unit>> delete(Plant plant) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<PlantFailure, Unit>> update(Plant plant) async {
    try {
      (await _dataBase()).plantDao.updatePlantDto(PlantDto.fromDomain(plant));
    _controller.sink.add(plant);
    return right(unit);
    } catch (e) {
    return left(const PlantFailure.unexpected());
    }
  }

  @override
  Future<Either<PlantFailure, BuiltList<Plant>>> loadNextPlants(
      int from, int count, PlantFilter filters) async {
    try {
      final list = await (await _dataBase()).plantDao.getPlantDtoSearch(
            "%${filters.nameContain}%",
            from,
            count,
          );
      return right(mapDtoListToPlant(list));
    } catch (e) {
      return left(const PlantFailure.unexpected());
    }
  }

  BuiltList<Plant> mapDtoListToPlant(List<PlantDto> plants) {
    return BuiltList(plants.map((e) => e.toDomain()));
  }

  Future<AppDatabase> _dataBase() {
    return _appDatabase.getDatabase();
  }

  @override
  Future<Either<PlantFailure, BuiltList<PlantType>>> loadPlantType() async {
    try {
      var plantTypes =
          await (await _dataBase()).plantTypeDtoDao.findAllPlantType();
      if (plantTypes.isEmpty) {
        await _insertInitDataToDatabase();
      }
      plantTypes = await (await _dataBase()).plantTypeDtoDao.findAllPlantType();
      return right(BuiltList.from(plantTypes.map((e) => e.toDomain())));
    } catch (_) {
      return left(const PlantFailure.unexpected());
    }
  }

  Future _insertInitDataToDatabase() async {
    for (int i = 0; i < _initialTypesList.length; i++) {
      await (await _dataBase())
          .plantTypeDtoDao
          .insertPlantType(PlantTypeDto(_initialTypesList[i]));
    }
  }

  @override
  Stream<Plant>? newPlantStream;
}
