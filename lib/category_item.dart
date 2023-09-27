// import 'package:delicacies/category_meals_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String id;
  final String title;
  final Color color;

  const CategoryItem({super.key, required this.title, required this.color, required this.id});

  void selectCategory(BuildContext ctx) {
    Navigator.pushNamed(ctx, "category_meal_screen",
      arguments: {
      'title': title,
        'id': id
      }
    );
    // Navigator.of(ctx).push(
    //   MaterialPageRoute( builder: (_) {
    //       return  CategoryMealsScreen(
    //         categoryId: id,
    //         categoryTitle: title,
    //       );
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
