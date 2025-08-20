import 'package:flutter/material.dart';
import 'package:food_delivery/views/bottm_navbar_view.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodak - Food delivery',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        dividerTheme: DividerThemeData(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
      ),
      home: BottmNavbarView(),
    );
  }
}
