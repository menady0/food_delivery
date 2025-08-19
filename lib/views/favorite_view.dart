import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_Model.dart';

class FavoriteView extends StatelessWidget {
  // final int foodIndex;
  const FavoriteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.network(
                    foods[0].imgUrl,
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
                          foods[0].title,
                          style: TextStyle(
                            fontWeight:
                                FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "\$${foods[0].price}",
                          style: TextStyle(
                            fontWeight:
                                FontWeight.w300,
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
        ),
      ],
    );
  }
}
