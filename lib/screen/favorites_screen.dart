import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  static const routeName = "favorites_screen";

  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  bool isGlutenFree = false;
  bool isLactoseFree = false;
  bool vegetarian = false;
  bool vegan = false;

  Widget buildSwitchTile(
    String title,
    String subtitle,
    bool currentValue,
    Function(bool) onTap,
  ) {
    return SwitchListTile(
      value: currentValue,
      activeColor: Colors.amber,
      onChanged: onTap,
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          child: const Text(
            "Adjust your meal selection",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              buildSwitchTile(
                "Gluten-free",
                "Only include gluten-free meals",
                isGlutenFree,
                (value) {
                  setState(() {
                    isGlutenFree = value;
                  });
                },
              ),
              buildSwitchTile(
                "Lactose-free",
                "Only include lactose-free meals",
                isLactoseFree,
                (value) {
                  setState(() {
                    isLactoseFree = value;
                  });
                },
              ),
              buildSwitchTile(
                "Gluten-free",
                "Only include gluten-free meals",
                vegetarian,
                (value) {
                  setState(() {
                    vegetarian = value;
                  });
                },
              ),
              buildSwitchTile(
                "Gluten-free",
                "Only include gluten-free meals",
                vegan,
                (value) {
                  setState(() {
                    vegan = value;
                  });
                },
              ),
            ],
          ),
        ),
      ],
      // ),
    );
  }
}
