import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/application/plant/plant_form/plant_form_bloc.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/presentation/core/widget/garden_scaffold.dart';
import 'package:garden/presentation/plant/form/widget/date_field_widget.dart';
import 'package:garden/presentation/plant/form/widget/name_field_widget.dart';
import 'package:garden/presentation/plant/form/widget/type_field_widget.dart';
import 'package:garden/presentation/routes/app_router.gr.dart';
import 'package:provider/provider.dart';

import '../../../injction.dart';

class FormPlantPage extends StatelessWidget {
  final Plant? plant;

  const FormPlantPage({
    required this.plant,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PlantFormBloc>(context)
        .add(PlantFormEvent.initialized(optionOf(plant)));
    return BlocConsumer<PlantFormBloc, PlantFormState>(
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                        message: failure.map(
                            unexpected: (u) => "Couldn't update the note."))
                    .show(context);
              },
              (_) {
                AutoRouter.of(context).navigate(const PlantListScreen());
              },
            );
          },
        );
      },
      buildWhen: (p, c) => p.isSaving != c.isSaving,
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            const PlantFormPageScaffold(),
            SavingInProgressOverlay(isSaving: state.isSaving)
          ],
        );
      },
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key? key,
    required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              const Text('Saving'),
            ],
          ),
        ),
      ),
    );
  }
}

class PlantFormPageScaffold extends StatelessWidget {
  const PlantFormPageScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<PlantFormBloc, PlantFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit a plant' : 'Create a plant');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              BlocProvider.of<PlantFormBloc>(context)
                  .add(const PlantFormEvent.saved());
            },
          )
        ],
      ),
      body: BlocBuilder<PlantFormBloc, PlantFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const NameField(),
                  DateField(),
                  TypeField(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
