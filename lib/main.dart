import 'package:flutter/material.dart';
import 'package:ui_recipes/ui/breakfast_screen.dart';
import 'package:ui_recipes/ui/dish_details_more_screen.dart';
import 'package:ui_recipes/ui/dish_details_screen.dart';
import 'package:ui_recipes/ui/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Recipes App",
      initialRoute: '/',
      theme: ThemeData(
          fontFamily: "Roboto",
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            displayLarge: TextStyle(color: Colors.white),
            titleLarge: TextStyle(color: Colors.white),
            titleMedium: TextStyle(color: Colors.white),
            titleSmall: TextStyle(
              color: Colors.white,
            ),
          ),
          appBarTheme: const AppBarTheme(
              color: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.white))),
      routes: {
        "/": (context) => HomeScreen(),
        "/breakfast_screen": (context) => BreakfastScreen(),
        "/details_screen": (context) => DishDetailsScreen(),
        "/more_details_screen": (context) => MoreDetailsScreen(),
      },
    );
  }
}
