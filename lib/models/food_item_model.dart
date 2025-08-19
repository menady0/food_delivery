class FoodItemModel {
  final String imgUrl;
  final String title;
  final double price;
  final bool isFavorite;

  FoodItemModel({
    required this.imgUrl,
    required this.title,
    required this.price,
    this.isFavorite = false,
  });

  FoodItemModel copyWith({
    String? title,
    String? imgUrl,
    double? price,
    bool? isFavorite,
  }) {
    return FoodItemModel(
      imgUrl: imgUrl ?? this.imgUrl,
      title: title ?? this.title,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItemModel> foods = [
  FoodItemModel(
    imgUrl:
        'https://raw.githubusercontent.com/menady0/food_delivery/refs/heads/master/assets/images/burger.png',
    title: 'Classic Beef Burger',
    price: 8.99,
    isFavorite: true,
  ),
  FoodItemModel(
    imgUrl:
        'https://raw.githubusercontent.com/menady0/food_delivery/refs/heads/master/assets/images/burger.png',
    title: 'Cheese Burger',
    price: 9.49,
  ),
  FoodItemModel(
    imgUrl:
        'https://raw.githubusercontent.com/menady0/food_delivery/refs/heads/master/assets/images/burger.png',
    title: 'Chicken Burger',
    price: 7.99,
  ),
  FoodItemModel(
    imgUrl:
        'https://raw.githubusercontent.com/menady0/food_delivery/refs/heads/master/assets/images/burger.png',
    title: 'Veggie Burger',
    price: 7.49,
  ),
  FoodItemModel(
    imgUrl:
        'https://raw.githubusercontent.com/menady0/food_delivery/refs/heads/master/assets/images/burger.png',
    title: 'Spicy Jalapeno Burger',
    price: 10.25,
  ),
];
