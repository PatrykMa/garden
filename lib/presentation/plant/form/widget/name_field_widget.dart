import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:garden/application/plant/plant_form/plant_form_bloc.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/value_objects.dart';

class NameField extends HookWidget {
  const NameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<PlantFormBloc, PlantFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.plant.name.getOrCrash();
      },
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Plant',
              counterText: '',
            ),
            maxLength: PlantName.maxLength,
            onChanged: (value) => BlocProvider.of<PlantFormBloc>(context)
                .add(PlantFormEvent.nameChanged(value)),
            validator: (_) => BlocProvider.of<PlantFormBloc>(context)
                .state
                .plant
                .name
                .value
                .fold(
                  (f) => f.map(
                      empty: (_) => "Cannot by empty",
                      toLong: (_) => "Name to long"),
                  (r) => null,
                ),
          )),
    );
  }
}
