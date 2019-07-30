import 'package:demo1/utils/str_utils.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  final String title;

  WebViewPage({this.url, this.title});

  @override
  _WebViewPageState createState() => _WebViewPageState();

  String _getTitle() =>  StrUtils.isEmpty(title) ? 'error' : title;

  String _getUrl() =>  StrUtils.isEmpty(url) ? 'error' : url;

}

class _WebViewPageState extends State<WebViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._getTitle()),
      ),
      body: WebView(
        initialUrl: widget._getUrl(),
      ),
    );
  }
}
