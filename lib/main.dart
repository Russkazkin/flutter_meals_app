import 'package:flutter/material.dart';

import 'screens/filters.dart';
import 'screens/tabs.dart';
import 'screens/meal_detail.dart';
import 'screens/category_meals.dart';
import 'screens/categories.dart';
import 'models/meal.dart';
import 'data/meals.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegetarian': false,
    'vegan': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['gluten'] && !meal.isGlutenFree) { return false; }
        if (_filters['lactose'] && !meal.isLactoseFree) { return false; }
        if (_filters['vegetarian'] && !meal.isVegetarian) { return false; }
        if (_filters['vegan'] && !meal.isVegan) { return false; }
        return true;
      }).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
            headline5: TextStyle(
              fontSize: 18,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            )),
      ),
      home: Tabs(),
      routes: {
        CategoryMeals.route: (context) => CategoryMeals(availableMeals: _availableMeals),
        MealDetail.route: (context) => MealDetail(),
        Filters.route: (context) => Filters(filters: _filters, saveFilters: _setFilters),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => Categories()),
    );
  }
}
