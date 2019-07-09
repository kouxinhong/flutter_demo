import 'package:flutter/material.dart';
import './bar/AppBar.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import './service/BannerSevice.dart' as BannerSevice;
import './model/HomeBannerModel.dart';
import './model/HomeBannerItemModel.dart';

void main() {
  runApp(HomeAppBar());
}

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  List<Widget> _actions;

  List<Widget> _getAction() {
    if (null != _actions) {
      return _actions;
    }
    _actions = List<Widget>();
    for (int i = 0; i < 2; i++) {
      IconButton iconButton = IconButton(
        icon: choices[i].icon,
        onPressed: () {
          _select(choices[i]);
        },
      );
      _actions.add(iconButton);
    }
    PopupMenuButton popupMenuButton = PopupMenuButton<Choice>(
        icon: choices[2].icon,
        onSelected: _select,
        itemBuilder: (BuildContext context) {
          return choices.skip(3).map<PopupMenuItem<Choice>>((Choice choice) {
            return PopupMenuItem(
                value: choice,
                child: ListTile(
                  leading: choice.icon,
                  title:
                      Text(choice.title, style: TextStyle(color: Colors.white)),
                ));
          }).toList();
        });
    _actions.add(popupMenuButton);
    return _actions;
  }

  Choice _selectedChoice = choices[0];
  void _select(Choice choice) {
    setState(() {
      // Causes the app to rebuild with the new _selectedChoice.
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter',
        theme:
            ThemeData(primarySwatch: Colors.lightBlue, cardColor: Colors.black),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter'),
              actions: _getAction(),
            ),
            body: HomeListView()));
  }
}

class HomeListView extends StatefulWidget {
  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  List<HomeBannerItemModel> _lists;
  @override
  void setState(fn) async {
    super.setState(fn);
    _lists = await BannerSevice.decodeBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
//            padding: EdgeInsets.all(10.0),
            shrinkWrap: true,
            itemCount: _lists.length,
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
                        child: Image.network(_lists[index].imagePath),
                      ),
                      Divider(height: 1, color: Colors.brown),
                      Text(
                        _lists[index].title,
                        style: TextStyle(height: 1, fontSize: 33),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ));
            }));
  }
}
// class HomeListView extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.grey,
//         child: ListView.builder(
//             scrollDirection: Axis.vertical,
// //            padding: EdgeInsets.all(10.0),
//             shrinkWrap: true,
//             itemCount: _banner(),
//             itemBuilder: (BuildContext context, int index) {
//               return Card(
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10))),
//                   color: Colors.white,
//                   elevation: 10,
//                   margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
//                   child: Column(
//                     children: <Widget>[
//                       ClipRRect(
// //                        borderRadius: BorderRadius.all(Radius.circular(15)),
//                         borderRadius:
//                             BorderRadius.vertical(top: Radius.circular(15)),
//                         child: Image.network('https://www.wanandroid.com/blogimgs/50c115c2-cf6c-4802-aa7b-a4334de444cd.png'),
//                       ),
//                       Divider(height: 1, color: Colors.brown),
//                       Text(
//                         'hello flutter Listview',
//                         style: TextStyle(height: 1, fontSize: 33),
//                         textAlign: TextAlign.center,
//                       )
//                     ],
//                   ));
//             }));
//   }
// }

class Choice {
  Choice({this.icon, this.title});

  final Icon icon;
  final String title;
}

List<Choice> choices = <Choice>[
  Choice(title: 'Search', icon: Icon(Icons.search, color: Colors.white)),
  Choice(title: 'box', icon: Icon(Icons.add_box, color: Colors.white)),
  Choice(title: 'setting', icon: Icon(Icons.settings, color: Colors.white)),
  Choice(title: 'setting', icon: Icon(Icons.settings, color: Colors.white)),
  Choice(title: 'feedback', icon: Icon(Icons.feedback, color: Colors.white)),
  Choice(title: 'report', icon: Icon(Icons.report, color: Colors.white)),
];
