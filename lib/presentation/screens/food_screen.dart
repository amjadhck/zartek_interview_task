import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zartek_interview_task/presentation/screens/cart_screen.dart';
import 'package:zartek_interview_task/presentation/screens/food_screen_body.dart';

import '../../application/food_response/food_bloc.dart';
import '../../domain/cart/modal/cart.dart';
import '../widgets/badge.dart';
import '../widgets/draer.dart';

class FoodScreen extends StatelessWidget {
  FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<FoodBloc>(context).add(const FoodEvent.initialize());
    });
    return DefaultTabController(
      length: 6,
      child: BlocBuilder<FoodBloc, FoodState>(
        builder: (context, state) {
          //print(state.foodList);
          if (state.isLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state.isError) {
            return const Scaffold(
              body: Center(
                child: Text("Error Occured"),
              ),
            );
          } else if (state.foodList.isEmpty) {
            return const Scaffold(
              body: Center(
                child: Text("List is Empty"),
              ),
            );
          } else {
            return Scaffold(
              appBar: AppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Consumer<CartProvider>(
                      builder: (_, val, Widget? ch) {
                        return Badge(
                            child: ch!, value: val.itemCount.toString());
                      },
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
                leading: Builder(
                  builder: (ctx) => IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.grey,
                    ),
                    onPressed: () => Scaffold.of(ctx).openDrawer(),
                  ),
                ),
                title: Text(''),
                bottom: TabBar(
                    onTap: (val) {
                    },
                    indicatorColor: Colors.pink[300],
                    labelColor: Colors.pink[300],
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    unselectedLabelStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                    labelStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500),
                    indicatorWeight: 2.5,
                    tabs: state.foodList.map((e) {
                      return Tab(
                        text: e.menuCategory,
                      );
                    }).toList()),
              ),
            drawer: SizedBox(child: DrawerWidget()),
              body: TabBarView(
                children: List.generate(
                  state.foodList.length,
                  (index) {
                    //print(index);
                    return FoodScreenBody(
                      idx: index,
                    );
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
