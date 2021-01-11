import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  static const route = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(appBar: AppBar(title: Text('$id'),), body: Center(child: Text('Meal - $id!'),),);
  }
}