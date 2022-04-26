import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartek_interview_task/domain/food_response/modal/food_response.dart';

import '../../application/food_response/food_bloc.dart';
import '../widgets/item_list.dart';

class FoodScreenBody extends StatelessWidget {
  final int idx;
  const FoodScreenBody({
    Key? key,
    required this.idx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<FoodBloc, FoodState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Error Occured'),
              );
            } else if (state.foodList.isEmpty) {
              return const Center(
                child: Text('List is Empty'),
              );
            } else {
              return ListView.separated(
                itemCount: state.foodList.length,
                padding: const EdgeInsets.only(top: 10, bottom: 50),
                itemBuilder: (ctx, index) {
                  final food = state.foodList[idx].categoryDishes![index];
                  final bool custom =
                      food.addonCat == null || food.addonCat!.isEmpty;
                  if (state.foodList[idx].categoryDishes![index].dishId ==
                      null) {
                    return Container();
                  } else {
                    return ListViewItems(
                      food.dishName!,
                      food.dishImage!,
                      food.dishCalories,
                      food.dishPrice!,
                      index,
                      food.dishDescription!,
                      custom,
                      food.dishId!.toString(),
                      food.dishType,
                    );
                  }
                },
                separatorBuilder: (ctx, i) {
                  return const Divider(
                    thickness: 1.0,
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
