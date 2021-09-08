import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/application/plant/plant_list/plant_list_bloc.dart';
import 'package:garden/domain/plant/plant_filter.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Search',
        counterText: '',
      ),
      onChanged: (value) => BlocProvider.of<PlantListBloc>(context)
          .add(PlantListEvent.setFilter(PlantFilter(nameContain: value))),
    );
  }
}
