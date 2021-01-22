import 'package:flutter/material.dart';

import '../models/meal.dart';

class Favorites extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const Favorites({this.favoriteMeals});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text('You have no favorites yet — start adding some!'),
    );
  }
}
