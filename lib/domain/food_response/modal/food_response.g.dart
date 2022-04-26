// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodResponse _$FoodResponseFromJson(Map<String, dynamic> json) => FoodResponse(
      tableMenuList: (json['table_menu_list'] as List<dynamic>?)
              ?.map((e) => TableMenuList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FoodResponseToJson(FoodResponse instance) =>
    <String, dynamic>{
      'table_menu_list': instance.tableMenuList,
    };

TableMenuList _$TableMenuListFromJson(Map<String, dynamic> json) =>
    TableMenuList(
      menuCategory: json['menu_category'],
      menuCategoryId: json['menu_category_id'],
      menuCategoryImage: json['menu_category_image'],
      nexturl: json['nexturl'],
      categoryDishes: (json['category_dishes'] as List<dynamic>?)
          ?.map((e) => CategoryDish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TableMenuListToJson(TableMenuList instance) =>
    <String, dynamic>{
      'menu_category': instance.menuCategory,
      'menu_category_id': instance.menuCategoryId,
      'menu_category_image': instance.menuCategoryImage,
      'nexturl': instance.nexturl,
      'category_dishes': instance.categoryDishes,
    };

CategoryDish _$CategoryDishFromJson(Map<String, dynamic> json) => CategoryDish(
      dishId: json['dish_id'],
      dishName: json['dish_name'],
      dishPrice: (json['dish_price'] as num?)?.toDouble(),
      dishImage: json['dish_image'],
      dishCurrency: json['dish_currency'],
      dishCalories: json['dish_calories'],
      dishDescription: json['dish_description'],
      dishAvailability: json['dish_Availability'] as bool?,
      dishType: json['dish_Type'],
      nexturl: json['nexturl'],
      addonCat: (json['addonCat'] as List<dynamic>?)
          ?.map((e) => AddonCat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryDishToJson(CategoryDish instance) =>
    <String, dynamic>{
      'dish_id': instance.dishId,
      'dish_name': instance.dishName,
      'dish_price': instance.dishPrice,
      'dish_image': instance.dishImage,
      'dish_currency': instance.dishCurrency,
      'dish_calories': instance.dishCalories,
      'dish_description': instance.dishDescription,
      'dish_Availability': instance.dishAvailability,
      'dish_Type': instance.dishType,
      'nexturl': instance.nexturl,
      'addonCat': instance.addonCat,
    };

Addon _$AddonFromJson(Map<String, dynamic> json) => Addon(
      dishId: json['dish_id'],
      dishName: json['dish_name'],
      dishPrice: json['dish_price'],
      dishImage: json['dish_image'],
      dishCurrency: json['dish_currency'],
      dishCalories: json['dish_calories'],
      dishDescription: json['dish_description'],
      dishAvailability: json['dish_Availability'] as bool?,
      dishType: json['dish_Type'],
    );

Map<String, dynamic> _$AddonToJson(Addon instance) => <String, dynamic>{
      'dish_id': instance.dishId,
      'dish_name': instance.dishName,
      'dish_price': instance.dishPrice,
      'dish_image': instance.dishImage,
      'dish_currency': instance.dishCurrency,
      'dish_calories': instance.dishCalories,
      'dish_description': instance.dishDescription,
      'dish_Availability': instance.dishAvailability,
      'dish_Type': instance.dishType,
    };

AddonCat _$AddonCatFromJson(Map<String, dynamic> json) => AddonCat(
      addonCategory: json['addon_category'],
      addonCategoryId: json['addon_category_id'],
      addonSelection: json['addon_selection'],
      nexturl: json['nexturl'],
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => Addon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddonCatToJson(AddonCat instance) => <String, dynamic>{
      'addon_category': instance.addonCategory,
      'addon_category_id': instance.addonCategoryId,
      'addon_selection': instance.addonSelection,
      'nexturl': instance.nexturl,
      'addons': instance.addons,
    };
