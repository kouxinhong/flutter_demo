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
          child: MyButtom(),
        ),
      ),
    );
  }

}

class MyButtom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(onPressed: (){_showToast(context);}, icon: Icon(Icons.ac_unit), label: Icon(Icons.ac_unit));
  }
  void _showToast(BuildContext context) {
    var fullName;
    assert(fullName.isEmpty);
    print('JS prints this line.');
  }
}