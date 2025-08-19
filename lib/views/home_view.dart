import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_Model.dart';
import 'package:food_delivery/widgets/food_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                'assets/images/classic_burger.jpg',
                height: size.height * 0.35,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
              itemCount: foods.length,
              itemBuilder: (context, index) =>
                  FoodItem(foodIndex: index),
            ),
          ],
        ),
      ),
    );
  }
}
