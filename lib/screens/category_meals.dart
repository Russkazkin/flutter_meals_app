import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  static const route = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArguments['id'];
    final title = routeArguments['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return
      }, itemCount: ,),
    );
  }
}
