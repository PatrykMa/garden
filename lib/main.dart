import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:garden/generated/locale_keys.g.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'presentation/core/garden_app_widget.dart';
import 'injction.dart';
//flutter pub run build_runner watch
//flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart --source-dir ./assets/translations
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  initializeDateFormatting(Intl.getCurrentLocale());
  configureInjection(Environment.prod);
  runApp(GardenAppWidget());
}



