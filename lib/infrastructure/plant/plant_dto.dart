import 'package:floor/floor.dart';
import 'package:garden/domain/core/value_objects.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant_type.dart';
import 'package:garden/domain/plant/value_objects.dart';

@entity
class PlantDto {
  @primaryKey
  final String id;
  final String name;
  final String typeId;
  final int dateTime;

  PlantDto({
    required this.name,
    required this.id,
    required this.dateTime,
    required this.typeId,
  });

  Plant toDomain() {
    return Plant(
      id: UniqueId.fromUniqueString(id),
      name: PlantName(name),
      type: PlantType(name: PlantTypeName(typeId)),
      plantTime: DateTime.fromMillisecondsSinceEpoch(dateTime),
    );
  }

  factory PlantDto.fromDomain(Plant plant){
    return PlantDto(name: plant.name.getOrCrash(), id: plant.id.getOrCrash(), dateTime: plant.plantTime.millisecondsSinceEpoch, typeId: plant.type.name.getOrCrash());
  }
}

@entity
class PlantTypeDto {
  @primaryKey
  final String name;

  PlantTypeDto(this.name);

  PlantType toDomain(){
    return PlantType(name: PlantTypeName(name),);
  }
}
