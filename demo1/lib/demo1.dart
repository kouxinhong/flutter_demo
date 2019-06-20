import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() => runApp(HelloWorldApp());

class HelloWorldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello world',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor:  Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('demo1'),
        ),
        body: Center(
          child: Text("flutter hello world"),
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('Have a snack!'),
              ),
            );
          },
          tooltip: 'Increment',
          child: Icon(Icons.add)),
      ),
    );
  }
  void _showToast(BuildContext context) {
   SnackBar(
     content: const Text("dadad"),
     action: SnackBarAction(label: "DADDA", onPressed: (){}),
   );
  }
}