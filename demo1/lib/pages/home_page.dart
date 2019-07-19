import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget _tags() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: _textSpans
    );
  }

  List<Widget> _textSpans = <Widget>[
//    Padding(
//      padding: const EdgeInsets.only(right: 4),
//      child: Container(
//        width: 32,
//        height: 18,
//        child: const Text(
//          '问答',
//          textAlign: TextAlign.center,
//          style: TextStyle(fontSize: 10),
//        ),
//        decoration: BoxDecoration(
//          border: Border.all(color: Colors.red, width: 0.5),
//          borderRadius: BorderRadius.all(Radius.circular(4.0)),
//        ),
//      ),
//    ),
    Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text('作者:',
            style: TextStyle(color: Color.fromARGB(0xFF, 0x99, 0x99, 0x99)))),
    Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text('kouzi',
            style: TextStyle(color: Color.fromARGB(0xFF, 0x00, 0x00, 0x00)))),
    Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text('分类:',
            style: TextStyle(color: Color.fromARGB(0xFF, 0x99, 0x99, 0x99)))),
    Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text('干货资源/课程推荐',
            style: TextStyle(color: Color.fromARGB(0xFF, 0x00, 0x00, 0x00)))),
    Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text('时间:',
            style: TextStyle(color: Color.fromARGB(0xFF, 0x99, 0x99, 0x99)))),
    Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text('2019.7.19',
            style: TextStyle(color: Color.fromARGB(0xFF, 0x00, 0x00, 0x00)))),
  ];

  @override
  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemCount: 10,
//      padding: EdgeInsets.zero,
//      itemBuilder: (BuildContext context, int index) {
//        return Padding(
//          padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
//          child: Column(
//            children: <Widget>[
//              ListTile(
//                title: Text('彻底解析Android缓存机制——LruCache'),
//                subtitle: Text('应用推出新功能需要给给用户提示指引一下.传入需要指引的View即可'),
//                contentPadding: EdgeInsets.zero,
//                trailing: Icon(Icons.favorite, color: Colors.red),
//              ),
//              _tags(),
//              Divider(height: 1, color: Colors.pink)
//            ],
//          ),
//        );
//      },
//    );
    return ListView.separated(
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return new Divider(
              height: 1.0, color: Colors.grey, indent: 16, endIndent: 16);
        },
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: const Text("问答"),
                  title: Text('彻底解析Android缓存机制——LruCache'),
                  subtitle: Text('应用推出新功能需要给给用户提示指引一下.传入需要指引的View即可'),
                  contentPadding: EdgeInsets.zero,
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                _tags(),
              ],
            ),
          );
        });
  }
}
