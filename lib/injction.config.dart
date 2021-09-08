// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/plant/plant_form/plant_form_bloc.dart' as _i3;
import 'application/plant/plant_list/plant_list_bloc.dart' as _i5;
import 'application/plant/plant_observer/plant_observer_bloc.dart' as _i6;
import 'domain/plant/i_plant_repository.dart' as _i4;
import 'infrastructure/core/database.dart' as _i7;
import 'infrastructure/plant/local_plant_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.PlantFormBloc>(
      () => _i3.PlantFormBloc(get<_i4.IPlantRepository>()));
  gh.factory<_i5.PlantListBloc>(
      () => _i5.PlantListBloc(get<_i4.IPlantRepository>()));
  gh.factory<_i6.PlantObserverBloc>(
      () => _i6.PlantObserverBloc(get<_i4.IPlantRepository>()));
  gh.singleton<_i7.DatabaseAccess>(_i7.DatabaseAccess());
  gh.singleton<_i4.IPlantRepository>(
      _i8.LocalPlantRepository(get<_i7.DatabaseAccess>()));
  return get;
}
