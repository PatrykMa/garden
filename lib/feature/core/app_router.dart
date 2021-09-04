

import 'package:auto_route/annotations.dart';
import 'package:garden/feature/plant/presentation/screen/plant_list_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: PlantListScreen, initial: true),
  ],
)
class $AppRouter{}