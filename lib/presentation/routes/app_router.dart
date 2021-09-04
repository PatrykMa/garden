

import 'package:auto_route/annotations.dart';
import '../plant/oerwiew/plant_list_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: PlantListScreen, initial: true),
  ],
)
class $AppRouter{}