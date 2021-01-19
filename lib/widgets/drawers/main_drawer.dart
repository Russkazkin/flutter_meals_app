import 'package:flutter/material.dart';

import '../../screens/filters.dart';
import '../ui/drawer_list_tile.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DrawerListTile(
            title: 'Meals',
            icon: Icons.restaurant,
            tapHandler: () => Navigator.of(context).pushNamed('/'),
          ),
          DrawerListTile(
            title: 'Settings',
            icon: Icons.settings,
            tapHandler: () => Navigator.of(context).pushNamed(Filters.route),
          ),
        ],
      ),
    );
  }
}
