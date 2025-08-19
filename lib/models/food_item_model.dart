class FoodItemModel {
  final String imgUrl;
  final String title;
  final double price;

  FoodItemModel({
    required this.imgUrl,
    required this.title,
    required this.price,
  });
}

List<FoodItemModel> foods = [
  FoodItemModel(
    imgUrl:
        'https://raw.githubusercontent.com/menady0/food_delivery/refs/heads/master/assets/images/burger.png',
    title: 'Classic Beef Burger',
    price: 8.99,
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
