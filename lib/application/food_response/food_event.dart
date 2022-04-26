part of 'food_bloc.dart';

@freezed
class FoodEvent with _$FoodEvent {
  const factory FoodEvent.initialize() = Initialize;
  // const factory FoodEvent.getTableMenuList() = GetTableMenuList;
  const factory FoodEvent.getCategoryDishList() = GetCategoryDishList;
  // const factory FoodEvent.getAddonList() = GetAddonList;
  // const factory FoodEvent.getAddonCatist() = GetAddonCatist;
}
