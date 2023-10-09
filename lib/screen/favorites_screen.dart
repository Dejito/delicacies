import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  static const routeName = "favorites_screen";


  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: const Center(
        child: Text("Favorites!"),
      ),
    );
  }
}
