import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/utils/constants.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';



class WebViewPage extends StatefulWidget {
  final String _initURL;
  String get initURL => APIConstants.IconBase + _initURL;

  WebViewPage(this._initURL);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> 
{
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
    Widget buildWebView()
    {
      return Container(
         margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pinkAccent)
                  ),
          child:  InAppWebView(
          initialUrl: widget.initURL,
          initialHeaders: {

          },
          initialOptions: {

          },
          onWebViewCreated: (InAppWebViewController controller) {
            webView = controller;
            webView.loadUrl(widget.initURL);
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
  Widget build(BuildContext context) 
  {  
    return buildWebView();
  }
}