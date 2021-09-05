

import 'package:flutter/material.dart';
import 'package:garden/presentation/plant/oerwiew/plant_list_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.plant: return MaterialPageRoute(builder: (context) => PlantListScreen());
    case Routes.editPlant: return MaterialPageRoute(builder: (context) => PlantListScreen());
    default: throw Exception("not supported route");
  }

}

class Routes{
  static const String plant = "/plant";
  static const String editPlant = "$plant/edit";
}