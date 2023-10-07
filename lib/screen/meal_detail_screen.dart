import 'package:delicacies/dummy_data.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "meal_detail_screen";

  Widget buildSectionTitle(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      height: 150,
      width: 300,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: child,
    );
  }

  Widget listViewWidget(String label) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(5),
        // border: Border.all(width: 1, color: Colors.grey)
      ),
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.all(2),
      child: Text(label),
    );
  }

  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final selectedMeal = dummyMeals.firstWhere((meal) => id == meal.id);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: Column(
        children: [
          Image.network(selectedMeal.imageUrl),
          buildSectionTitle(context, "Ingredients"),
          buildContainer(
            ListView.builder(
              itemBuilder: (context, i) =>
              listViewWidget(selectedMeal.ingredients[i]),
              itemCount: selectedMeal.ingredients.length,
            ),
          ),
          buildSectionTitle(context, "Steps"),
          buildContainer(
            ListView.builder(
              itemBuilder: (context, i) =>
                  listViewWidget(selectedMeal.steps[i]),
              itemCount: selectedMeal.steps.length,
            ),
          ),
        ],
      ),
    );
  }
}
