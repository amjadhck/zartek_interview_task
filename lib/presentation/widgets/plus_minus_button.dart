import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/cart/modal/cart.dart';

class PlusMinusButton extends StatelessWidget {
  final int qty;
  final String productId;

  PlusMinusButton(this.qty, this.productId);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Provider.of<CartProvider>(context, listen: false)
                .decrementQuantity(productId);
          },
          child: Container(
            height: 35,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.green[900],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: const Icon(Icons.remove, color: Colors.white),
          ),
        ),
        Container(
          height: 35,
          width: 30,
          color: Colors.green[900],
          alignment: Alignment.center,
          child: Text(
            qty.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<CartProvider>(context, listen: false)
                .incrementQuantity(productId);
          },
          child: Container(
            height: 35,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.green[900],
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
