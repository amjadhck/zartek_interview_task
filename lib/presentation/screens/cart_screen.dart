import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../application/bloc/cart_bloc.dart';
import '../../domain/cart/modal/cart.dart';
import '../../domain/cart/modal/cart_modal.dart';
import '../../infrastructure/cart/cart_repositery.dart';
import '../widgets/cart_items.dart';
import '../widgets/submit_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<CartBloc>(context).add(const CartEvent.initial());
    });
    CartProvider cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Order Summary',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[900]),
                    child: Consumer<CartProvider>(
                      builder: (_, val, __) {
                        return Text(
                          '${val.itemCount} Dishes - ${val.productsCount} Items',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        );
                      },
                    ),
                  ),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      final item = cart.items.values.toList()[index];
                      return CartItems(item.productId, item.title,
                          item.calories, item.price, index, item.quantity);
                    },
                    separatorBuilder: (c, i) {
                      return const Divider(
                        thickness: 1,
                      );
                    },
                    itemCount: cart.items.length,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(
                      thickness: 1.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total Amount',
                          style: TextStyle(fontSize: 16),
                        ),
                        Consumer<CartProvider>(
                          builder: (_, val, __) {
                            return Text(
                              'INR ${val.totalAmount}',
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 16),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SubmitButton()
          ],
        ),
      ),
    );
  }
}
