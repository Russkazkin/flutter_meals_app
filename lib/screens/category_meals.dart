import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meals/meal.dart' as MealWidget;

class CategoryMeals extends StatefulWidget {
  static const route = '/category-meals';
  final List<Meal> availableMeals;

  const CategoryMeals({this.availableMeals});

  @override
  _CategoryMealsState createState() => _CategoryMealsState();
}

class _CategoryMealsState extends State<CategoryMeals> {
  String title;
  List<Meal> displayedMeals;
  var _loadedInitData = false;

  @override
  void didChangeDependencies() {
    if(!_loadedInitData) {
      final routeArguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
      final id = routeArguments['id'];
      title = routeArguments['title'];
      displayedMeals = widget.availableMeals.where((meal) => meal.categories.contains(id)).cast<Meal>().toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String id) {
    setState(() {
      displayedMeals.removeWhere((element) => element.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealWidget.Meal(
            id: displayedMeals[index].id,
            title: displayedMeals[index].title,
            imageUrl: displayedMeals[index].imageUrl,
            duration: displayedMeals[index].duration,
            complexity: displayedMeals[index].complexity,
            affordability: displayedMeals[index].affordability,
          );
        },
        itemCount: displayedMeals.length,
      ),
    );
  }
}
