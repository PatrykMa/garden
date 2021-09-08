import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/application/plant/plant_form/plant_form_bloc.dart';

class TypeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantFormBloc, PlantFormState>(
      builder: (context, state) {
        if(state.plantTypes.isEmpty && state.loadTypesFailureOrSuccessOption.isNone()){
          BlocProvider.of<PlantFormBloc>(context).add(const PlantFormEvent.loadPlantTypes());
        }

        if(state.loadTypesFailureOrSuccessOption.isSome()){
          return const Text("Load Failure");
        }
        if(state.plantTypes.isEmpty){
          return const CircularProgressIndicator();
        }
        if(!state.isEditing){
          BlocProvider.of<PlantFormBloc>(context).add(PlantFormEvent.typeChanged(state.plantTypes.first.name.getOrCrash()));
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Plant type "),
            DropdownButton<String>(
              value: state.isEditing
                  ? state.plant.type.name.getOrCrash()
                  : state.plantTypes.first.name.getOrCrash(),
              items: state.plantTypes
                  .map((plant) => DropdownMenuItem<String>(
                        value: plant.name.getOrCrash(),
                        child: Text(plant.name.getOrCrash()),
                      ))
                  .toList(),
              onChanged: (value) =>BlocProvider.of<PlantFormBloc>(context).add(PlantFormEvent.typeChanged(value!)),
            ),
          ],
        );
      },
    );
  }
}
