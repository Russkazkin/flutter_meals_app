import 'package:flutter/material.dart';

import '../widgets/categories/category.dart';
import '../data/categories.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map((categoryData) => Category(
                title: categoryData.title,
                color: categoryData.color,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
