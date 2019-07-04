import 'package:flutter/material.dart';
import './home/bar/AppBar.dart';
void main() {
  runApp(HomeAppBar());
}

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  Choice _selectedChoice = choices[0];

  void _select(Choice choice) {
    setState(() {
      // Causes the app to rebuild with the new _selectedChoice.
      _selectedChoice = choice;
    });
  }

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'APKPure',
        theme:
            ThemeData(primarySwatch: Colors.lightBlue, cardColor: Colors.black),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Home APKPure'),
              actions: _getAction(),
            ),
            body: ListView(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    children: <Widget>[
                      Image.network('https://upload.jianshu.io/admin_banners/web_images/4675/569882aa7e239c755c754c4d170a859eca26f752.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/1250/h/540'),
                      Text('大望路女司机',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    children: <Widget>[
                      Image.network('https://upload.jianshu.io/admin_banners/web_images/4675/569882aa7e239c755c754c4d170a859eca26f752.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/1250/h/540'),
                      Text('大望路女司机',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    children: <Widget>[
                      Image.network('https://upload.jianshu.io/admin_banners/web_images/4675/569882aa7e239c755c754c4d170a859eca26f752.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/1250/h/540'),
                      Text('大望路女司机',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    children: <Widget>[
                      Image.network('https://upload.jianshu.io/admin_banners/web_images/4675/569882aa7e239c755c754c4d170a859eca26f752.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/1250/h/540'),
                      Text('大望路女司机',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    children: <Widget>[
                      Image.network('https://upload.jianshu.io/admin_banners/web_images/4675/569882aa7e239c755c754c4d170a859eca26f752.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/1250/h/540'),
                      Text('大望路女司机',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}

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
