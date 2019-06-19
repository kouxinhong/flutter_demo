import 'package:flutter/material.dart';

void main() => runApp(HelloWorldApp());

class HelloWorldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello world',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor:  Colors.green,
        primaryColorBrightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('demo1'),
        ),
        body: Center(
          child: Text("flutter hello world"),
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add)),
      ),
    );
  }
}