import 'package:flutter/material.dart';
// import 'bar/AppBar.dart';
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
                  title: Text(choice.title, style: TextStyle(color: Colors.white)),
                ));
          }).toList();
        });
    _actions.add(popupMenuButton);
    return _actions;
  }

  // List _appBarIcon = [
  //   MyIconButton(0),
  //   MyIconButton(1),
  //   MyPopuMenu(),
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APKPure',
      theme: ThemeData(primarySwatch: Colors.lightBlue, cardColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home APKPure'),
          actions: _getAction(),
        ),
        body: ListTile(
          leading: _selectedChoice.icon,
          title: Text(_selectedChoice.title),
        ),
      ),
    );
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
