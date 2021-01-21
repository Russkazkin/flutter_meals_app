import 'package:flutter/material.dart';

import 'screens/filters.dart';
import 'screens/tabs.dart';
import 'screens/meal_detail.dart';
import 'screens/category_meals.dart';
import 'screens/categories.dart';

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

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
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
        CategoryMeals.route: (context) => CategoryMeals(),
        MealDetail.route: (context) => MealDetail(),
        Filters.route: (context) => Filters(saveFilters: _setFilters),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => Categories()),
    );
  }
}
