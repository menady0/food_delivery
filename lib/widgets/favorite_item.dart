import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_Model.dart';

class FavoriteItem extends StatelessWidget {
  final FoodItemModel item;
  final VoidCallback onUnfavorite;

  const FavoriteItem({
    super.key,
    required this.item,
    required this.onUnfavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                item.imgUrl,
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
                      item.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "\$${item.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: onUnfavorite,
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
