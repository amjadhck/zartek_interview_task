import 'package:flutter/material.dart';
import 'package:zartek_interview_task/presentation/widgets/green_red_icon.dart';
import 'package:zartek_interview_task/presentation/widgets/plus_minus_button.dart';

class CartItems extends StatelessWidget {
  final String productId;
  final String title;
  final double calories;
  final double price;
  final int index;
  final int quantity;

  CartItems(this.productId, this.title, this.calories, this.price, this.index,
      this.quantity);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          VegOrNonVeg(Colors.green),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: PlusMinusButton(quantity, productId),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text('INR $price'),
                      flex: 1,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('INR ${price * quantity}'),
                const SizedBox(
                  height: 10,
                ),
                Text('Calories $calories')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
