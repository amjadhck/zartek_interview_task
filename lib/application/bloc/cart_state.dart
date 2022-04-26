part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required Map<String, CartItem> cartItems,
    required VoidCallback addToCart,
    required int itemCount,
    required int productCount,
    required double totalAmount,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory CartState.initial() {
    return  CartState(
      addToCart: (){},
      cartItems: {},
      itemCount: 0,
      productCount: 0,
      totalAmount: 0,
      isLoading: false,
      isError: false,
    );
  }

}
