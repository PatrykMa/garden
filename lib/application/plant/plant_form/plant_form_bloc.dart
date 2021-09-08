import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:garden/domain/plant/i_plant_repository.dart';
import 'package:garden/domain/plant/plant.dart';
import 'package:garden/domain/plant/plant_failuers.dart';
import 'package:garden/domain/plant/plant_type.dart';
import 'package:garden/domain/plant/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'plant_form_event.dart';

part 'plant_form_state.dart';

part 'plant_form_bloc.freezed.dart';
@injectable
class PlantFormBloc extends Bloc<PlantFormEvent, PlantFormState> {
  final IPlantRepository _plantRepository;
  PlantFormBloc(this._plantRepository) : super(PlantFormState.initial());

  @override
  Stream<PlantFormState> mapEventToState(
    PlantFormEvent event,
  ) async* {
    yield* event.map(

      initialized: (initialized) async*{
        yield initialized.initialPlantOption.fold(
              () => state.copyWith(
                plant: Plant.empty(),
                isEditing: false,
              ),
              (initialPlant) => state.copyWith(
            plant: initialPlant,
            isEditing: true,
          ),
        );
      },
      nameChanged: (nameChanged) async*{
        yield state.copyWith(
          plant: state.plant.copyWith(name: PlantName(nameChanged.name)),
          saveFailureOrSuccessOption: none(),
        );
      },
      typeChanged: (typeChanged) async*{
        yield state.copyWith(
          plant: state.plant.copyWith(type: PlantType(name: PlantTypeName(typeChanged.plantType))),
          saveFailureOrSuccessOption: none(),
        );
      },
      plantTimeChanged: (plantTimeChanged) async*{
        yield state.copyWith(
          plant: state.plant.copyWith(plantTime: plantTimeChanged.plantDate),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (saved) async* {
        Either<PlantFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.plant.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _plantRepository.update(state.plant)
              : await _plantRepository.create(state.plant);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      }, loadPlantTypes: (_LoadPlantTypes value)async* {
      final typesOrFailure = await _plantRepository.loadPlantType();
      yield typesOrFailure.fold(
              (l) => state.copyWith(loadTypesFailureOrSuccessOption: optionOf(left(l))),
              (r) => state.copyWith(plantTypes: r));
    },
    );
  }
}
