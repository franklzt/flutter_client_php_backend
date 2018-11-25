import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/help_pages/webview_page.dart';

class RoomViewPage extends StatefulWidget {
  @override
  _RoomViewPageState createState() => _RoomViewPageState();
}

class _RoomViewPageState extends State<RoomViewPage> {

var webview;
  Widget _buildWebView()
    {
      webview = WebViewPage("https://www.baidu.com");
      return webview;
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: _buildWebView(),
    );
  }
}