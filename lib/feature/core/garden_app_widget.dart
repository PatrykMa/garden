
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/generated/locale_keys.g.dart';

import 'app_router.gr.dart';

class GardenAppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
      ],
      child: MaterialApp.router(
        title: LocaleKeys.app_title,
        routerDelegate:_appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.yellow,
          accentColor: Colors.green,
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
