
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:garden/infrastructure/plant/plant_dto.dart';
import 'package:injectable/injectable.dart';

import 'package:sqflite/sqflite.dart' as sqflite;


part 'database.g.dart'; // the generated code will be there


//toDo check how to do it in correct way
@singleton
class DatabaseAccess{
  AppDatabase? _database;

  Future<AppDatabase> getDatabase() async {
    _database ??= await  $FloorAppDatabase.databaseBuilder('app_database.db').build();
    return _database!;

  }
}

@Database(version: 1, entities: [PlantDto,PlantTypeDto])
abstract class AppDatabase extends FloorDatabase {
  PlantDtoDao get plantDao;
  PlantTypeDtoDao get plantTypeDtoDao;
}

@dao
abstract class PlantDtoDao {
  @Query('SELECT * FROM PlantDto')
  Future<List<PlantDto>> findAllPlantDto();

  @Query('SELECT * FROM PlantDto ORDER BY id LIMIt :take OFFSET :from')
  Future<List<PlantDto>> getPlantDto(int from, int take);

  @Query('SELECT * FROM PlantDto where name like :nameSearch ORDER BY id LIMIt :take OFFSET :from')
  Future<List<PlantDto>> getPlantDtoSearch(String nameSearch, int from, int take);

  @insert
  Future<void> insertPlantDto(PlantDto plantDto);

  @update
  Future<void> updatePlantDto(PlantDto plantDto);

}

@dao
abstract class PlantTypeDtoDao {
  @Query('SELECT * FROM PlantTypeDto')
  Future<List<PlantTypeDto>> findAllPlantType();

  @Query('SELECT * FROM PlantTypeDto WHERE id = :id')
  Stream<PlantTypeDto?> findPlantTypeById(int id);

  @insert
  Future<void> insertPlantType(PlantTypeDto plantType);
}
