import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
      BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('分类')),
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我')),
    ]);
  }
}
