import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  @required final String id;
  @required final String title;

  CategoryMeals({this.id, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'The recipes for the $title category!',
        ),
      ),
    );
  }
}
