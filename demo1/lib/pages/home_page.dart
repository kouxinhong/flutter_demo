import 'package:demo1/model/article/article_item_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../service/banner_sevice.dart' as BannerSevice;

class HomePage extends StatelessWidget {
//  final List<ArticleItemModel> _list;
//  HomePage(this._list,{Key key}): super(key: key);

  Widget _tags(ArticleItemModel value) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: _getListItem(value));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: BannerSevice.getArticles(http.Client()),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(child: Text('wait...'));
            case ConnectionState.active:
              return Center(child: Text('active...'));
            case ConnectionState.done:
              return _createListView(context, snapshot);
            default:
              if (snapshot.error) {
                return Text('Error: ${snapshot.error}');
              } else {
                return _createListView(context, snapshot);
              }
          }
        });
  }

  _createListView(BuildContext context, AsyncSnapshot snapshot) {
    List<ArticleItemModel> values = snapshot.data;
    for (var value in values) {
      print(value);
    }
    return ListView.separated(
        itemCount: values.length,
        separatorBuilder: (BuildContext context, int index) {
          return new Divider(
              height: 1.0, color: Colors.grey, indent: 16, endIndent: 16);
        },
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
            child: Column(
              children: <Widget>[
                ListTile(
//                  leading: Text(values[index].tags != null? values[index].tags[0].name: 'rr'),
                  leading: Text('rrrr'),
                  title: Text(values[index].title),
                  subtitle: Text(values[index].desc),
                  contentPadding: EdgeInsets.zero,
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                _tags(values[index]),
              ],
            ),
          );
        });
  }

  List<Widget> _getListItem(ArticleItemModel value) {
    var items = List<Widget>();
    items.add(_getPadding('作者:', 0x99));
    items.add(_getPadding(value.author, 0x00));
    items.add(_getPadding('分类:', 0x99));
    items.add(_getPadding(value.superChapterName, 0x00));
    items.add(_getPadding('时间:', 0x99));
    items.add(_getPadding('时间:', 0x99));
    return items;
  }

  Padding _getPadding(String text, int color) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(text,
            style:
                TextStyle(color: Color.fromARGB(0xFF, color, color, color))));
  }
}
