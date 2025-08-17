import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
