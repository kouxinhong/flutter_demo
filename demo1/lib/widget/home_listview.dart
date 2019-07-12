import 'package:demo1/model/banner_model_list.dart';
import 'package:flutter/material.dart';
import '../service/banner_sevice.dart' as BannerSevice;
import 'package:http/http.dart' as http;

class HomeListView extends StatefulWidget {
  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: BannerSevice.serverDecodeBanner(http.Client()),
//        future: BannerSevice.localDecodeBanner(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Text('loading...');
            default:
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              else
                return createContainer(context, snapshot);
          }
        });
  }

  Widget createContainer(BuildContext context, AsyncSnapshot snapshot) {
    List<BannerModelList> values = snapshot.data;
    return Container(
        color: Colors.grey,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
//            padding: EdgeInsets.all(10.0),
            shrinkWrap: true,
            itemCount: values.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.white,
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
//                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.network(values[index].imagePath),
                      ),
                      Divider(height: 1, color: Colors.brown),
                      Text(
                        values[index].title,
                        style: TextStyle(height: 1, fontSize: 20),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ));
            }));
  }
}
