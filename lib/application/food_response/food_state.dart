part of 'food_bloc.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState({
    required List<TableMenuList> foodList,
    // required List<CategoryDish>? dishList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory FoodState.initial() {
    return const FoodState(
      foodList: [],
      // dishList: [],
      isLoading: false,
      isError: false,
    );
  }
}
