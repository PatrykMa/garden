import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/application/plant/plant_form/plant_form_bloc.dart';

class DateField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<PlantFormBloc, PlantFormState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Plant date"),
            ElevatedButton(
                onPressed: () {
                  showDatePicker(context: context,
                    initialDate: state.plant.plantTime,
                    //toDO move
                    lastDate: DateTime(2222),
                    firstDate: DateTime(1990),).then((value) {
                      if(value != null) {
                        BlocProvider.of<PlantFormBloc>(context).add(PlantFormEvent.plantTimeChanged(value));
                      }
                  });
                },
                child:
                Text(DateFormat('yyyy-MM-dd').format(state.plant.plantTime))),
          ],
        );
      },
    );
  }
}
