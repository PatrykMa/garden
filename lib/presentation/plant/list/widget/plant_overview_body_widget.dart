import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/application/plant/plant_list/plant_list_bloc.dart';
import 'package:garden/presentation/plant/list/widget/plant_card.dart';

class PlantsOverviewBody extends StatelessWidget {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantListBloc, PlantListState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const CircularProgressIndicator(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return NotificationListener<ScrollNotification>(
              onNotification: (notification){
                return _handleScrollNotification(notification,context);
              },
              child: ListView.builder(
                controller: _scrollController,
                itemBuilder: (context, index) {
                  final plant = state.plant[index];
                    return PlantCard(plant: plant);
                },
                itemCount: state.plant.length,
              ),
            );
          },
          loadFailure: (state) {
            return Center(
              child: Text(state.noteFailure.toString()),
            );
          },
        );
      },
    );
  }

  bool _handleScrollNotification(ScrollNotification notification,BuildContext context) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      BlocProvider.of<PlantListBloc>(context).add(const PlantListEvent.loadMore());
    }

    return false;
  }
}
