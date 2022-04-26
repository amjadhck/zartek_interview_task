import 'package:injectable/injectable.dart';
import 'package:zartek_interview_task/domain/cart/modal/cart_modal.dart';

import '../../domain/cart/cart_repo.dart';

@LazySingleton(as: CartRepo)
class CartRepositery implements CartRepo {
  Map<String, CartItem> items = {
    "Test": CartItem(
      title: "test1",
      calories: 200,
      price: 100,
      productId: "000001",
      quantity: 20,
      unit: "21",
    ),
    "Test2": CartItem(
      title: "test2",
      calories: 265,
      price: 865,
      productId: "000002",
      quantity: 12,
      unit: "98",
    )
  };
  @override
  void addItem({
    required String? title,
    required String? unit,
    required double? price,
    required double? calories,
    required String? productId,
  }) {
    if (items.containsKey(productId)) {
      items.update(
        productId!,
        (existingItem) => CartItem(
            title: existingItem.title,
            quantity: existingItem.quantity + 1,
            price: existingItem.price,
            calories: existingItem.calories,
            productId: existingItem.productId,
            unit: existingItem.unit),
      );
    } else {
      items.putIfAbsent(
        productId!,
        () => CartItem(
            title: title!,
            quantity: 1,
            price: price!,
            unit: unit!,
            calories: calories!,
            productId: productId),
      );
    }
  }

  @override
  void clearCart() {
    items = {};
  }

  @override
  void decrementQuantity(String productId) {
    CartItem item =
        items.values.firstWhere((element) => element.productId == productId);

    if (item.quantity <= 1) {
      items.removeWhere((key, value) {
        return value.productId == productId;
      });
    } else {
      items.update(
        productId,
        (existingItem) {
          return CartItem(
              title: existingItem.title,
              quantity: existingItem.quantity - 1,
              price: existingItem.price,
              calories: existingItem.calories,
              productId: existingItem.productId,
              unit: existingItem.unit);
        },
      );
    }
  }

  @override
  Map<String, CartItem> getCartItems() {
    print(items);
    return items;
  }

  @override
  void incrementQuantity(String productId) {
    items.update(
      productId,
      (existingItem) => CartItem(
          title: existingItem.title,
          quantity: existingItem.quantity + 1,
          price: existingItem.price,
          calories: existingItem.calories,
          productId: existingItem.productId,
          unit: existingItem.unit),
    );
  }

  @override
  void removeItem(int productId) {
    items.remove(productId);
  }

  @override
  int itemCount() {
    if (items == null) {
      return 0;
    }
    return items.length;
  }

  @override
  int productsCount() {
    var length = 0;
    if (items == null) {
      return length;
    }
    items.forEach((key, value) {
      length += value.quantity * 1;
    });
    return length;
  }

  @override
  double totalAmount() {
    var total = 0.0;
    items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }
}
