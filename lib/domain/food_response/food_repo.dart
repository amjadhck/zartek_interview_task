
import 'package:dartz/dartz.dart';

import '../Failures/main_failure.dart';
import 'modal/food_response.dart';

abstract class FoodResponseRepo {
  Future<Either<MainFailure, List<FoodResponse>>> getFoodResponse();
  // Future<Either<MainFailure, TableMenuList>> getTableMenuList();
  Future<Either<MainFailure, List<CategoryDish>>> getCategoryDishList();
  // Future<Either<MainFailure, Addon>> getAddonList();
  // Future<Either<MainFailure, AddonCat>> getAddonCatist();


}