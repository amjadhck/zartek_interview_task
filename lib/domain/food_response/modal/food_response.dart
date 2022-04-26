import 'package:json_annotation/json_annotation.dart';

part 'food_response.g.dart';

@JsonSerializable()
class FoodResponse {
  // @JsonKey(name: 'restaurant_id')
  // dynamic restaurantId;
  // @JsonKey(name: 'restaurant_name')
  // dynamic restaurantName;
  // @JsonKey(name: 'restaurant_image')
  // dynamic restaurantImage;
  // @JsonKey(name: 'table_id')
  // dynamic tableId;
  // @JsonKey(name: 'table_name')
  // dynamic tableName;
  // @JsonKey(name: 'branch_name')
  // dynamic branchName;
  // @JsonKey(name: 'nexturl')
  // dynamic nexturl;
  @JsonKey(name: 'table_menu_list')
  List<TableMenuList> tableMenuList;

  FoodResponse({
    // this.restaurantId,
    // this.restaurantName,
    // this.restaurantImage,
    // this.tableId,
    // this.tableName,
    // this.branchName,
    // this.nexturl,
    this.tableMenuList = const [],
  });

  factory FoodResponse.fromJson(Map<String, dynamic> json) {
    return _$FoodResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FoodResponseToJson(this);
}

@JsonSerializable()
class TableMenuList {
  @JsonKey(name: 'menu_category')
  dynamic menuCategory;
  @JsonKey(name: 'menu_category_id')
  dynamic menuCategoryId;
  @JsonKey(name: 'menu_category_image')
  dynamic menuCategoryImage;
  @JsonKey(name: 'nexturl')
  dynamic nexturl;
  @JsonKey(name: 'category_dishes')
  List<CategoryDish>? categoryDishes;

  TableMenuList({
    this.menuCategory,
    this.menuCategoryId,
    this.menuCategoryImage,
    this.nexturl,
    this.categoryDishes,
  });

  factory TableMenuList.fromJson(Map<String, dynamic> json) {
    return _$TableMenuListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TableMenuListToJson(this);
}

@JsonSerializable()
class CategoryDish {
  @JsonKey(name: 'dish_id')
  dynamic dishId;
  @JsonKey(name: 'dish_name')
  dynamic dishName;
  @JsonKey(name: 'dish_price')
  double? dishPrice;
  @JsonKey(name: 'dish_image')
  dynamic dishImage;
  @JsonKey(name: 'dish_currency')
  dynamic dishCurrency;
  @JsonKey(name: 'dish_calories')
  dynamic dishCalories;
  @JsonKey(name: 'dish_description')
  dynamic dishDescription;
  @JsonKey(name: 'dish_Availability')
  bool? dishAvailability;
  @JsonKey(name: 'dish_Type')
  dynamic dishType;
  @JsonKey(name: 'nexturl')
  dynamic nexturl;
  @JsonKey(name: 'addonCat')
  List<AddonCat>? addonCat;

  CategoryDish({
    this.dishId,
    this.dishName,
    this.dishPrice,
    this.dishImage,
    this.dishCurrency,
    this.dishCalories,
    this.dishDescription,
    this.dishAvailability,
    this.dishType,
    this.nexturl,
    this.addonCat,
  });

  factory CategoryDish.fromJson(Map<String, dynamic> json) {
    return _$CategoryDishFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryDishToJson(this);
}

@JsonSerializable()
class Addon {
  @JsonKey(name: 'dish_id')
  dynamic dishId;
  @JsonKey(name: 'dish_name')
  dynamic dishName;
  @JsonKey(name: 'dish_price')
  dynamic dishPrice;
  @JsonKey(name: 'dish_image')
  dynamic dishImage;
  @JsonKey(name: 'dish_currency')
  dynamic dishCurrency;
  @JsonKey(name: 'dish_calories')
  dynamic dishCalories;
  @JsonKey(name: 'dish_description')
  dynamic dishDescription;
  @JsonKey(name: 'dish_Availability')
  bool? dishAvailability;
  @JsonKey(name: 'dish_Type')
  dynamic dishType;

  Addon({
    this.dishId,
    this.dishName,
    this.dishPrice,
    this.dishImage,
    this.dishCurrency,
    this.dishCalories,
    this.dishDescription,
    this.dishAvailability,
    this.dishType,
  });

  factory Addon.fromJson(Map<String, dynamic> json) => _$AddonFromJson(json);

  Map<String, dynamic> toJson() => _$AddonToJson(this);
}

@JsonSerializable()
class AddonCat {
  @JsonKey(name: 'addon_category')
  dynamic addonCategory;
  @JsonKey(name: 'addon_category_id')
  dynamic addonCategoryId;
  @JsonKey(name: 'addon_selection')
  dynamic addonSelection;
  @JsonKey(name: 'nexturl')
  dynamic nexturl;
  @JsonKey(name: 'addons')
  List<Addon>? addons;

  AddonCat({
    this.addonCategory,
    this.addonCategoryId,
    this.addonSelection,
    this.nexturl,
    this.addons,
  });

  factory AddonCat.fromJson(Map<String, dynamic> json) {
    return _$AddonCatFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddonCatToJson(this);
}
