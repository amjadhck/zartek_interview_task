import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zartek_interview_task/domain/Failures/main_failure.dart';
import 'package:zartek_interview_task/domain/food_response/food_repo.dart';

import '../../domain/food_response/modal/food_response.dart';

part 'food_event.dart';
part 'food_state.dart';
part 'food_bloc.freezed.dart';

@injectable
class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final FoodResponseRepo foodResponseRepo;
  FoodBloc(this.foodResponseRepo) : super(FoodState.initial()) {
    on<Initialize>((event, emit) async {
      emit(state.copyWith(
        foodList: [],
        isError: false,
        isLoading: true,
      ));
      final _result = await foodResponseRepo.getFoodResponse();
      //log(_result.toString());
      final newState = _result.fold(
        (MainFailure failure) => state.copyWith(
          foodList: [],
          isError: true,
          isLoading: false,
        ),
        (response) => state.copyWith(
          foodList: response[0].tableMenuList,
          isError: false,
          isLoading: false,
        ),
      );
      emit(newState);
    });

    on<GetCategoryDishList>((event, emit) async {
      emit(state.copyWith(
        // dishList: [],
        foodList: [],
        isError: false,
        isLoading: true,
      ));
      final _result = await foodResponseRepo.getCategoryDishList();
      log(_result.toString());
      final newState = _result.fold(
        (MainFailure failure) => state.copyWith(
          foodList: [],
          // dishList: [],
          isError: true,
          isLoading: false,
        ),
        (List<CategoryDish> response) => state.copyWith(
          // dishList: response,
          isError: false,
          isLoading: false,
        ),
      );
      emit(newState);
    });
  }
}
