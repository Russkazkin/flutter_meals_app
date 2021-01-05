import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tht Recipes'),
      ),
      body: Center(
        child: Text(
          'The recipes for the category!',
        ),
      ),
    );
  }
}
