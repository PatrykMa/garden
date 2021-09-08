import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/presentation/routes/app_router.gr.dart';

class PlantCard extends StatelessWidget {
  final Plant plant;
  const PlantCard({required this.plant});
  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 2,
      child: InkWell(
        onTap: (){
          AutoRouter.of(context).navigate(FormPlantRoute(plant: plant));},
        child: Padding(
          //toDO
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(child: Text(plant.name.getOrCrash())),
              Expanded(
                  child: Column(
                    children: [
                      Text(plant.type.name.getOrCrash()),
                      Text(DateFormat('yyyy-MM-dd').format(plant.plantTime))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
