import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/models/DataInfo.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';



class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {

  var _suggestions = <HouseInfo>[];
   var _biggerFont = const TextStyle(fontSize: 18.0);

  InAppWebViewController webView;
  String url = "";
  double progress = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


Widget _buildSuggestions() {
  _suggestions.clear();
  _suggestions.addAll(InfoManager.instance.getHouseInfoByVender(InfoManager.instance.currentVerder));
    return ListView.builder(
      itemCount: _suggestions.length * 2,
      padding: const EdgeInsets.all(16.0),      
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(HouseInfo pair) {
    return ListTile(
      title: Text(
        pair.infoName,
        style: _biggerFont,
      ),
    );
  }


    Widget buildWebView()
    {
      return Container(
         margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pinkAccent)
                  ),
          child:  InAppWebView(
          initialUrl: "https:www.baidu.com",
          initialHeaders: {

          },
          initialOptions: {

          },
          onWebViewCreated: (InAppWebViewController controller) {
            webView = controller;
          },
          onLoadStart: (InAppWebViewController controller, String url) {
            print("started $url");
            setState(() {
              this.url = url;
              
            });
          },
          onProgressChanged: (InAppWebViewController controller, int progress) {
            setState(() {
              this.progress = progress/100;
            });
          },
        ));
    }


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pinkAccent)
                  ),
          child: Column(children: <Widget>[
             Expanded(child: buildWebView()),
             Expanded(child:_buildSuggestions())],)
        ) ;
  }
}