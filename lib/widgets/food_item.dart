import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_Model.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key, required this.item});
  final FoodItemModel item;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // Placeholder(fallbackHeight: 50),
          Image.network(
            item.imgUrl,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            item.title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
          Text(
            "\$${item.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
