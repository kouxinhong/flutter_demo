import 'package:flutter/material.dart';
import './bar/my_app_bar.dart' as MyAppBar;
import './bar/bottom_bar.dart' as bottomBar;
import './service/BannerSevice.dart' as BannerSevice;
import './model/HomeBannerItemModel.dart';

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

class HomeListView extends StatefulWidget {
  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: BannerSevice.decodeBanner(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Text('loading...');
            default:
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              else
                return createContainer(context, snapshot);
          }
        });
  }

  Widget createContainer(BuildContext context, AsyncSnapshot snapshot) {
    List<HomeBannerItemModel> values = snapshot.data;
    return Container(
        color: Colors.grey,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
//            padding: EdgeInsets.all(10.0),
            shrinkWrap: true,
            itemCount: values.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.white,
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
//                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.network(values[index].imagePath),
                      ),
                      Divider(height: 1, color: Colors.brown),
                      Text(
                        values[index].title,
                        style: TextStyle(height: 1, fontSize: 20),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ));
            }));
  }
}
