import 'package:flutter/material.dart';

import '../screen/favorites_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    Widget buildListTile(IconData icon, String text, Function onTap) {
      return ListTile(
        onTap: (){onTap();},
        leading: Icon(icon),
        title: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    }

    return Drawer(
      backgroundColor: Theme.of(context).canvasColor,
      child: Column(
        children: [
          Container(
            height: 150,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).hintColor,
            alignment: Alignment.centerLeft,
            child: const Text(
              "Cooking up!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          buildListTile(Icons.restaurant, "Meals", (){
            Navigator.of(context).pushReplacementNamed("/");
          }),
          buildListTile(Icons.settings, "Filters", (){
            Navigator.of(context).pushReplacementNamed(FavoritesScreen.routeName);
          })
        ],
      ),
    );
  }
}
