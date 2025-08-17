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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                'assets/images/classic_burger.jpg',
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius:
                          BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Placeholder(
                          fallbackHeight: 50,
                        ),
                        Text('Burger'),
                        Text('5\$'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius:
                          BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Placeholder(
                          fallbackHeight: 50,
                        ),
                        Text('Burger'),
                        Text('5\$'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius:
                          BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Placeholder(
                          fallbackHeight: 50,
                        ),
                        Text('Burger'),
                        Text('5\$'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
