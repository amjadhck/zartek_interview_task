import 'modal/cart_modal.dart';

abstract class CartRepo {
  Map<String, CartItem> getCartItems();
  void addItem({
    required String? title,
    required String? unit,
    required double? price,
    required double? calories,
    required String? productId,
  });
  void removeItem(int productId);
  void incrementQuantity(String productId);
  void decrementQuantity(String productId);
  void clearCart();
  int itemCount();
  int productsCount();
  double totalAmount();
}
