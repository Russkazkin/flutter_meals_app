import 'package:flutter/material.dart';

import './favorites.dart';
import './categories.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category_outlined,), text: 'Category',),
              Tab(icon: Icon(Icons.star_border_outlined,), text: 'Favorites',),
            ],
          ),
        ),
        body: TabBarView(children: [
          Categories(), Favorites(),
        ],),
      ),
    );
  }
}
