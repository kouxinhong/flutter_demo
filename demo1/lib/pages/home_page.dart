import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('彻底解析Android缓存机制——LruCache'),
//          subtitle: RichText(text: TextSpan(
//            text: '彻底',
//            style: TextStyle(color: Colors.red,backgroundColor: Colors.red,),
//            children: <TextSpan>[
//              TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
//              TextSpan(text: ' world!'),
//            ]
//          )),
          subtitle: Row(
              children: <Widget>[
                Chip(label: Text('置顶'),labelPadding: EdgeInsets.zero,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2))
                )),
                Chip(label: Text('问答')),
                Chip(label: Text('dada')),
              ]),
          trailing: Icon(Icons.favorite, color: Colors.red),
        );
      },
    );
  }
}

//Padding(
//padding: EdgeInsets.all(4),
//child: RichText(
//text: TextSpan(
//text: '置顶', style: DefaultTextStyle.of(context).style))),
