import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_Model.dart';
import 'package:food_delivery/widgets/favorite_item.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() =>
      _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    final favoriteFoods = foods
        .where((item) => item.isFavorite)
        .toList();

    if (favoriteFoods.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/empty_state.png',
              height: 350,
            ),
            Text(
              'You don\'t have favorite item!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: favoriteFoods.length,
      itemBuilder: (context, index) {
        final item = favoriteFoods[index];
        return FavoriteItem(
          item: item,
          onUnfavorite: () {
            final foodIndex = foods.indexOf(item);
            setState(() {
              foods[foodIndex] = foods[foodIndex]
                  .copyWith(isFavorite: false);
            });
          },
        );
      },
    );
  }
}
