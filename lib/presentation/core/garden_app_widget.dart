import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/application/plant/plant_form/plant_form_bloc.dart';
import 'package:garden/application/plant/plant_list/plant_list_bloc.dart';
import 'package:garden/application/plant/plant_observer/plant_observer_bloc.dart';
import 'package:garden/injction.dart';
import 'package:garden/presentation/routes/app_router.gr.dart';

class GardenAppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PlantListBloc>(
          create: (BuildContext context) => getIt(),
        ),
        BlocProvider<PlantFormBloc>(
          create: (BuildContext context) => getIt()..add(const PlantFormEvent.loadPlantTypes()),
        ),
        BlocProvider<PlantObserverBloc>(
          create: (BuildContext context) => getIt(),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.green,
          accentColor: Colors.lightGreen,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
