import 'package:delicacies/screen/categories_screen.dart';
import 'package:delicacies/screen/category_meals_screen.dart';
import 'package:delicacies/screen/favorites_screen.dart';
import 'package:delicacies/screen/meal_detail_screen.dart';
import 'package:delicacies/screen/tab_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.pink),
        primarySwatch: Colors.pink,
        hintColor: Colors.amber,
        primaryColor: Colors.amber,
        highlightColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
          titleMedium: const TextStyle(
           fontSize: 24,
              fontFamily: 'RobotoCondensed'
          ),
            ),
        useMaterial3: true,
      ),
      // home: const CategoryScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const TabScreen(),
        CategoryMealsScreen.id: (context)=> const CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => const MealDetailScreen(),
        FavoritesScreen.routeName: (context) => const FavoritesScreen()
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx) => const CategoryScreen());
      },
    );
  }
}
