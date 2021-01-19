import 'package:flutter/material.dart';
import '../widgets/drawers/main_drawer.dart';

class Filters extends StatelessWidget {
  static const route = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filters'),
      ),
    );
  }
}
