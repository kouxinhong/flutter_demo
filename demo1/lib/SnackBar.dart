import 'package:flutter/material.dart';

void main() {
  runApp(new SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'toast demo',
      // home: MyShowSnackBarError(),
      // home: MynackBar(),
      home: NormalSnackBar(),
    );
  }
}


//错误的写法
// class MyShowSnackBarError extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("toast"),
//       ),
//       body: Center(
//         child: RaisedButton( //取不到context
//           onPressed:() => Scaffold.of(context).showSnackBar(SnackBar(content: Text('hello toast'))),
//           child: Text('点我弹出吐司'),
//         ),
//       ),
//     );
//   }
// }

//方法1 不推荐
class MynackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("toast"),
      ),
      body: Builder(
        builder: (context)=>
          Center(
            child: RaisedButton(
              onPressed: () => Scaffold.of(context).showSnackBar(SnackBar(content: Text('hello toast'))),
              child: Text('点我弹出吐司'),
              ),
            )
        ),
    );
  }
}


//方法2 一般使用这种

class NormalSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("toast"),
      ),
      body: Center(
        child: MyButton()
      ),
    );
  }
}
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToXiaoJieJie(context);
      },
      child: Text("点我弹出吐司"),
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async {
    //async是启用异步方法

    final result = await Navigator.push(
        //等待
        context,
        MaterialPageRoute(builder: (context) => XiaoJieJie()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是小姐姐')),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('大长腿小姐姐'),
            onPressed: () {
              Navigator.pop(context, '大长腿:1511008888');
            },
          ),
          RaisedButton(
            child: Text('小蛮腰小姐姐'),
            onPressed: () {
              Navigator.pop(context, '大长腿:1511009999');
            },
          ),
        ],
      )),
    );
  }
}
