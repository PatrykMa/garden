// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/plant/plant.dart' as _i5;
import '../plant/form/form_plant_page.dart' as _i4;
import '../plant/list/plant_list_screen.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    PlantListScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.PlantListScreen();
        }),
    FormPlantRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FormPlantRouteArgs>();
          return _i4.FormPlantPage(plant: args.plant);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(PlantListScreen.name, path: '/'),
        _i1.RouteConfig(FormPlantRoute.name, path: '/form-plant-page')
      ];
}

class PlantListScreen extends _i1.PageRouteInfo {
  const PlantListScreen() : super(name, path: '/');

  static const String name = 'PlantListScreen';
}

class FormPlantRoute extends _i1.PageRouteInfo<FormPlantRouteArgs> {
  FormPlantRoute({required _i5.Plant? plant})
      : super(name,
            path: '/form-plant-page', args: FormPlantRouteArgs(plant: plant));

  static const String name = 'FormPlantRoute';
}

class FormPlantRouteArgs {
  const FormPlantRouteArgs({required this.plant});

  final _i5.Plant? plant;
}
