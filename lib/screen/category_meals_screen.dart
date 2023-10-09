import 'package:delicacies/widget/meal_item.dart';
import 'package:flutter/material.dart';

import 'package:delicacies/dummy_data.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const id = 'categories_meal_screen';

  const CategoryMealsScreen({super.key});

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

  late String title;
  late List<Meal> categoryMeals;
  bool isCalled = false;


  @override
  void didChangeDependencies() {
    if (!isCalled) {
      final routeArgs =
      ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      title = routeArgs['title']!;
      final categoryId = routeArgs['id'];
      categoryMeals = dummyMeals
          .where((meal) => meal.categories.contains(categoryId))
          .toList();
    }
    isCalled = true;
    super.didChangeDependencies();
  }

  void removeItem(String id) {
    setState(() {
      categoryMeals.removeWhere((element) => element.id == id);
    });
  }

  // final String categoryId;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // drawer: const MainDrawer(),

      body: ListView.builder(
        itemBuilder: (context, i) => MealItem(
          id: categoryMeals[i].id,
            title: categoryMeals[i].title,
            imageUrl: categoryMeals[i].imageUrl,
            duration: categoryMeals[i].duration,
            complexity: categoryMeals[i].complexity,
          affordability: categoryMeals[i].affordability,
          removeItem: removeItem,
        ),
        // Text(categoryMeals[i].title),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
