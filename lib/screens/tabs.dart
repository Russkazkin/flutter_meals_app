import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/drawers/main_drawer.dart';

import './favorites.dart';
import './categories.dart';

class Tabs extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const Tabs({this.favoriteMeals});

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List<Map<String, Object>> _screens;

  int _selectedScreenIndex = 0;

  @override
  void initState() {
    _screens = [
      {'page': Categories(), 'title': 'Categories',},
      {'page': Favorites(favoriteMeals: widget.favoriteMeals,), 'title': 'Favorites',},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _screens[_selectedScreenIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            label: 'Favorites',
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
