

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:garden/presentation/plant/form/form_plant_page.dart';
import 'package:garden/presentation/plant/list/plant_list_screen.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PlantListScreen, initial: true),
    AutoRoute(page: FormPlantPage)
  ],
)
class $AppRouter {}