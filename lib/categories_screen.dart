import 'package:delicacies/category_item.dart';
import 'package:flutter/material.dart';

import 'dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delicacies"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              mainAxisExtent: 200,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: dummyCategories
              .map(
                (item) => CategoryItem(title: item.title, color: item.color),
              )
              .toList(),
        ),
      ),
    );
  }
}
