import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/cart_bloc.dart';
import '../screens/cart_screen.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final String value;

  const Badge({required this.child, required this.value});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final cart = state.cartItems;
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return CartScreen();
            }));
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              child,
              Positioned(
                left: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red[400]),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    value,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
