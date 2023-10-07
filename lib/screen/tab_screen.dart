import 'package:delicacies/screen/categories_screen.dart';
import 'package:delicacies/screen/favorites_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Meals"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Categories",
                icon: Icon(Icons.category),
              ),
              Tab(
                text: "Favorites",
                icon: Icon(Icons.star),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CategoryScreen(),
            FavoritesScreen()
          ],
        )
      ),
    );
  }
}
