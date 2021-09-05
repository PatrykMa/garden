
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/generated/locale_keys.g.dart';
import 'package:garden/presentation/routes/app_router.dart';



class GardenAppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
      ],
      child: MaterialApp(
        title: LocaleKeys.app_title,
        onGenerateRoute: generateRoute,
        initialRoute: Routes.plant,
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
