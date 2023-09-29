import 'package:delicacies/widget/meal_item.dart';
import 'package:flutter/material.dart';

import 'package:delicacies/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const id = 'categories_meal_screen';

  const CategoryMealsScreen({super.key});

  // final String categoryId;
  // final String categoryTitle;
  //
  // const CategoryMealsScreen(
  //     {super.key, required this.categoryId, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = dummyMeals
        .where((meal) => meal.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) => MealItem(
            title: categoryMeals[i].title,
            imageUrl: categoryMeals[i].imageUrl,
            duration: categoryMeals[i].duration,
            complexity: categoryMeals[i].complexity),
        // Text(categoryMeals[i].title),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
