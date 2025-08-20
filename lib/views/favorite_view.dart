import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_Model.dart';
import 'package:food_delivery/widgets/favorite_item.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});
  @override
  Widget build(BuildContext context) {
    final favoriteIndices = List.generate(
      foods.length,
      (i) => i,
    ).where((i) => foods[i].isFavorite).toList();
    return ListView.builder(
      itemCount: favoriteIndices.length,
      itemBuilder: (context, index) => FavoriteItem(
        foodIndex: favoriteIndices[index],
      ),
    );
  }
}
