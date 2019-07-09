import 'package:flutter/material.dart';

List<Widget> actions = <Widget>[
  IconButton(
    icon: choices[0].icon,
    onPressed: () {
      //_select(choices[_index]);
    },
  ),
  IconButton(
    icon: choices[1].icon,
    onPressed: () {
      //_select(choices[_index]);
    },
  ),
  PopupMenuButton<Choice>(
      icon: choices[2].icon,
      // onSelected: ,
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
      })
];

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
