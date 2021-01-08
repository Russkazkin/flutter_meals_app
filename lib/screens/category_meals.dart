import 'package:flutter/material.dart';
import '../data/meals.dart';

class CategoryMeals extends StatelessWidget {
  static const route = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArguments['id'];
    final title = routeArguments['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) => meal.categories.contains(id)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(categoryMeals[index].title);
      }, itemCount: categoryMeals.length,),
    );
  }
}
