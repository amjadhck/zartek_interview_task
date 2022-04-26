// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zartek_interview_task/infrastructure/cart/cart_repositery.dart';
import 'package:zartek_interview_task/presentation/widgets/green_red_icon.dart';

import '../../application/food_response/food_bloc.dart';
import '../../core/constants/constants.dart';
import '../../domain/cart/modal/cart.dart';

class ListViewItems extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double calories;
  final double price;
  final int index;
  final String description;
  final bool customisation;
  final String dishId;
  final int dishType;

  ListViewItems(
      this.title,
      this.imageUrl,
      this.calories,
      this.price,
      this.index,
      this.description,
      this.customisation,
      this.dishId,
      this.dishType);

  //final _utils = Utilities();

  @override
  Widget build(BuildContext context) {
    CartProvider cart = Provider.of<CartProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          VegOrNonVeg(dishType == 2 ? Colors.green : Colors.red[300]!),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  title,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('INR $price'),
                              const SizedBox(
                                width: 80,
                              ),
                              Text(' $calories Calories'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            description,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: 130,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    cart.addItem(
                                        productId: dishId,
                                        title: title,
                                        unit: '1',
                                        price: price,
                                        calories: calories);
                                  },
                                  child: const Text(
                                    'Add to Cart',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),

                                // Container(
                                //   height: 35,
                                //   width: 30,
                                //   color: Colors.green,
                                //   alignment: Alignment.center,
                                //   child: Text(
                                //     "0",
                                //     style: const TextStyle(color: Colors.white),
                                //   ),
                                // ),
                                // GestureDetector(
                                //   onTap: () {
                                //     cart.addItem(
                                //   productId: dishId,
                                //   title: title,
                                //   unit: '1',
                                //   price: price,
                                //   calories: calories);

                                //   },
                                //   child: const Center(
                                //     child: Icon(
                                //       Icons.add,
                                //       color: Colors.white,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          if (!customisation)
                            const Text(
                              'Customisations Available',
                              style: TextStyle(color: Colors.red),
                            )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: FadeInImage(
                          //image: AssetImage("assets/images/placeholder.png"),
                          image: NetworkImage(imageUrl),
                          placeholder: const AssetImage(kPlaceHolder),
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
