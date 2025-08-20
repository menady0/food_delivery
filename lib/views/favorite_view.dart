import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_Model.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() =>
      _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    final favoriteIndices = foods
        .where((item) => item.isFavorite)
        .toList();

    if (favoriteIndices.isEmpty) {
      return Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/empty_state.png',
              height: 350,
            ),
            Text(
              'You don\'t have favoirte item!',
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
      itemCount: favoriteIndices.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 2,
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.network(
                  favoriteIndices[index].imgUrl,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        favoriteIndices[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "\$${favoriteIndices[index].price}",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    final targetItem =
                        favoriteIndices[index];
                    int foodIndex = foods.indexOf(
                      targetItem,
                    );
                    setState(() {
                      foods[foodIndex] =
                          foods[foodIndex].copyWith(
                            isFavorite: false,
                          );
                      favoriteIndices.remove(
                        targetItem,
                      );
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
