import 'package:flutter/material.dart';
import './bar/my_app_bar.dart' as MyAppBar;
import './bar/bottom_bar.dart' as bottomBar;
import './widget/home_listview.dart';

void main() {
  runApp(HomeAppBar());
}

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  // Choice _selectedChoice = choices[0];
  // void _select(Choice choice) {
  //   setState(() {
  //     // Causes the app to rebuild with the new _selectedChoice.
  //     _selectedChoice = choice;
  //   });
  // }

  List<Widget> _actions = MyAppBar.actions;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter',
        theme:
            ThemeData(primarySwatch: Colors.lightBlue, cardColor: Colors.black),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter'),
              actions: _actions,
            ),
            bottomNavigationBar: bottomBar.MyBottomNavigationBar(),
            body: HomeListView()));
  }
}