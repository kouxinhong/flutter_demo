// import 'package:flutter/material.dart';

//  class MyIconButton extends StatefulWidget {
//    final int index;
//    MyIconButton(this.index,{Key key}) : super(key: key);
 
//    _MyIconButtonState createState() => _MyIconButtonState(index);
//  }
 
//  class _MyIconButtonState extends State<MyIconButton> {
//    int _index;
//    _MyIconButtonState(index);
//    @override
//    Widget build(BuildContext context) {
//      return IconButton(
//         icon: choices[_index].icon,
//         onPressed: () {
//           //_select(choices[_index]);
//         },
//       );
//    }
//  }

// class MyPopuMenu extends StatefulWidget {
//   MyPopuMenu({Key key}) : super(key: key);

//   _MyPopuMenuState createState() => _MyPopuMenuState();
// }

// class _MyPopuMenuState extends State<MyPopuMenu> {
//     Choice _selectedChoice = choices[0];

//   void _select(Choice choice) {
//     setState(() {
//       // Causes the app to rebuild with the new _selectedChoice.
//       _selectedChoice = choice;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<Choice>(
//         icon: choices[2].icon,
//         onSelected: _select,
//         itemBuilder: (BuildContext context) {
//           return choices.skip(3).map<PopupMenuItem<Choice>>((Choice choice) {
//             return PopupMenuItem(
//                 value: choice,
//                 child: ListTile(
//                   leading: choice.icon,
//                   title: Text(choice.title, style: TextStyle(color: Colors.white)),
//                 ));
//           }).toList();
//         });
//   }
// }
//  class Choice {
//   Choice({this.icon, this.title});
//   final Icon icon;
//   final String title;
// }

// List<Choice> choices = <Choice>[
//   Choice(title: 'Search', icon: Icon(Icons.search, color: Colors.white)),
//   Choice(title: 'box', icon: Icon(Icons.add_box, color: Colors.white)),
//   Choice(title: 'setting', icon: Icon(Icons.settings, color: Colors.white)),
//   Choice(title: 'setting', icon: Icon(Icons.settings, color: Colors.white)),
//   Choice(title: 'feedback', icon: Icon(Icons.feedback, color: Colors.white)),
//   Choice(title: 'report', icon: Icon(Icons.report, color: Colors.white)),
// ];