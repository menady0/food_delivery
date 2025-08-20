import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_model.dart';

class FavoriteItem extends StatefulWidget {
  final int foodIndex;
  const FavoriteItem({
    super.key,
    required this.foodIndex,
  });

  @override
  State<FavoriteItem> createState() =>
      _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
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
                foods[widget.foodIndex].imgUrl,
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
                      foods[widget.foodIndex].title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "\$${foods[widget.foodIndex].price}",
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
                onPressed: () {},
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
    );
  }
}
