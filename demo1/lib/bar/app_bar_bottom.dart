import 'package:demo1/pages/drawer_page.dart';
import 'package:demo1/pages/home_page.dart';
import 'package:demo1/widget/home_listview.dart';
import 'package:flutter/material.dart';
import './app_bar.dart' as MyAppBar;

class AppbarBottom extends StatelessWidget {
  AppbarBottom({Key key}) : super(key: key);

  final List<Widget> _actions = MyAppBar.actions;
  final List<Tab> _tabs = <Tab>[
    Tab(text: '首页'),
    Tab(text: '项目'),
    Tab(text: '体系'),
    Tab(text: '公众号'),
    Tab(text: '导航'),
    Tab(text: '项目分类'),
    Tab(text: '工具'),
  ];

  final List<Widget> _tabBarViews = <Widget>[
    HomePage(),
    Center(child: Text('项目')),
    Center(child: Text('体系')),
    Center(child: Text('公众号')),
    Center(child: Text('导航')),
    Center(child: Text('项目分类')),
    Center(child: Text('工具')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          drawer: HeaderDrawer(),
          appBar: AppBar(
            title: const Text('Flutter'),
            actions: _actions,
            bottom: TabBar(
              tabs: _tabs,
              isScrollable: true,
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.white70,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1,
            ),
          ),
          body: TabBarView(
            children: _tabBarViews,
          )),
    );
  }
}
