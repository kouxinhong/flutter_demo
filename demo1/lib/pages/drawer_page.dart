import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  HeaderDrawer({Key key}) : super(key: key);

  UserAccountsDrawerHeader _accountsDrawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://upload.jianshu.io/users/upload_avatars/15792802/515f313b-1b0e-415e-a0c3-ec3ba3b0e243?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96'),
      ),
      accountName: Text('data'),
      accountEmail: Text('data@qq.com'),
//      decoration: BoxDecoration(
//        color: Colors.pink,
//        image: DecorationImage(
//          image: NetworkImage(
//              'https://upload.jianshu.io/users/upload_avatars/15792802/515f313b-1b0e-415e-a0c3-ec3ba3b0e243?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96'),
//          fit: BoxFit.cover,
//          colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.hardLight)
//        ),
//      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _accountsDrawerHeader(),
            ListTile(leading: Icon(Icons.email), title: Text('item1')),
            ListTile(leading: Icon(Icons.message), title: Text('item2')),
            ListTile(leading: Icon(Icons.my_location), title: Text('item3')),
          ],));
  }

}
