import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/application/plant/plant_list/plant_list_bloc.dart';
import 'package:garden/application/plant/plant_observer/plant_observer_bloc.dart';
import 'package:garden/presentation/core/widget/action_button.dart';
import 'package:garden/presentation/core/widget/garden_scaffold.dart';
import 'package:garden/presentation/plant/list/widget/plant_overview_body_widget.dart';
import 'package:garden/presentation/plant/list/widget/search_field.widget.dart';
import 'package:garden/presentation/routes/app_router.gr.dart';

class PlantListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PlantListBloc>(context).add(const PlantListEvent.refresh());
    return BlocListener<PlantObserverBloc, PlantObserverState>(
        listener: (context, state) {
          state.map(
            initial: (initial) {},
            newPlant: (newPlant) {
              WidgetsBinding.instance?.addPostFrameCallback((_) {
                FlushbarHelper.createSuccess(
                        message:
                            "Added plant ${newPlant.plant.name.getOrCrash()}")
                    .show(context);
              });
            },
          );
        },
        child: GardenScaffold(
            bottomNavigationBar: ActionButton(
              text: "ADD PLANT",
              onPressed: () {
                AutoRouter.of(context).navigate(FormPlantRoute(plant: null));
              },
            ),
            appBarText: "GARDEN",
            body: Column(
              children: [
                SearchField(),
                Expanded(child: PlantsOverviewBody()),
              ],
            )));
  }
}
