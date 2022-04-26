part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.initial() = Initialize;
  const factory CartEvent.clearcart() = ClearCart;
  const factory CartEvent.addtocart() = AddToCart;

}