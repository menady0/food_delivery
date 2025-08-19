import 'package:flutter/material.dart';
import 'package:food_delivery/views/home_view.dart';

class BottmNavbarView extends StatefulWidget {
  const BottmNavbarView({super.key});

  @override
  State<BottmNavbarView> createState() =>
      _BottmNavbarViewState();
}

class _BottmNavbarViewState
    extends State<BottmNavbarView> {
  int _selectedIndex = 0;
  void updateIndex(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foodak'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Center(child: Text('Center in Drawer')),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: updateIndex,
        selectedItemColor: Colors.orange,
      ),
      body: HomeView(),
    );
  }
}
