import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:zartek_interview_task/domain/Failures/main_failure.dart';
import 'package:zartek_interview_task/domain/food_response/modal/food_response.dart';

import '../../domain/api_service/api_endpoint.dart';
import '../../domain/food_response/food_repo.dart';

@LazySingleton(as: FoodResponseRepo)
class FoodRepositery implements FoodResponseRepo {
  @override
  Future<Either<MainFailure, List<FoodResponse>>> getFoodResponse() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.getFoodResponse);
      //log(response.toString());
      //log(response.statusCode.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        //final foodList = FoodResponse.fromJson(response.data);
        final foodList = (response.data as List).map((e) {
          return FoodResponse.fromJson(e);
        }).toList();
        
        return Right(foodList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<CategoryDish>>> getCategoryDishList() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.getFoodResponse);
      //log(response.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        // final foodList = FoodResponse.fromJson(response.data);
        final foodList = (response.data as List).map((e) {
          return CategoryDish.fromJson(e);
        }).toList();
        //print(foodList);
        return Right(foodList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
