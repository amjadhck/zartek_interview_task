import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zartek_interview_task/domain/cart/cart_repo.dart';

import '../../domain/cart/modal/cart_modal.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepo cartRepo;
  CartBloc(this.cartRepo) : super(CartState.initial()) {
    on<Initialize>((event, emit) {
      emit(state.copyWith(
        cartItems: {},
        isLoading: true,
        isError: false,
      ));

      final result = cartRepo.getCartItems();
      final totalAmount = cartRepo.totalAmount();
      final itemCount = cartRepo.itemCount();
      final productCount = cartRepo.productsCount();
      print(result);
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          cartItems: result,
          itemCount: itemCount,
          productCount: productCount,
          totalAmount: totalAmount,
        ),
      );
    });
    on<ClearCart>((event, emit) {
      final cartClear = cartRepo.clearCart();
      emit(state.copyWith(
        isLoading: false,
        isError: false,
        cartItems: {},
        itemCount: 0,
        productCount: 0,
        totalAmount: 0,
      ));
    });
    on<AddToCart>((event, emit) {

      emit(state.copyWith(
        isLoading: false,
        isError: false,
        cartItems: {},
        itemCount: 0,
        productCount: 0,
        totalAmount: 0,
      ));
    });
  }
}
