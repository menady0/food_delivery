import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_Model.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({super.key, required this.foodIndex});
  final int foodIndex;

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              // alignment: Alignment.topCenter,
              children: [
                Image.network(
                  foods[widget.foodIndex].imgUrl,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      // color: Colors.grey[100],
                      borderRadius:
                          BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () => setState(() {
                        foods[widget.foodIndex] =
                            foods[widget.foodIndex]
                                .copyWith(
                                  isFavorite:
                                      !foods[widget
                                              .foodIndex]
                                          .isFavorite,
                                );
                      }),
                      child: Icon(
                        foods[widget.foodIndex]
                                .isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              foods[widget.foodIndex].title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
            Text(
              "\$${foods[widget.foodIndex].price}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
