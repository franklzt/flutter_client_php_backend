import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/help_pages/webview_page.dart';
import 'package:flutter_client_php_backend/manager/DataInfo.dart';

class LocatePage extends StatefulWidget {
  @override
  _LocatePageState createState() => _LocatePageState();
}

class _LocatePageState extends State<LocatePage> {

  WebViewPage webview;
  Widget _buildWebView()
    {
      webview = WebViewPage("https://www.baidu.com");
      return webview;
    }

  var _suggestions = <RoomLocateInfo>[];
   var _biggerFont = const TextStyle(fontSize: 18.0);

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
  _suggestions.addAll(InfoManager.instance.filteredRoomLocateInfo);
    return ListView.builder(
      itemCount: _suggestions.length * 2,
      padding: const EdgeInsets.all(16.0),      
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        return _buildRow(index);
      }
    );
  }

  Widget _buildRow(int index) {
    return ListTile(
       onTap: () => _onTapItem(context, index),
       title: Text(
       _suggestions[index].infoName + InfoManager.instance.houseInfoList.getCurrentItem().infoName,
        style: _biggerFont,
      ),
    );
  }


 void _onTapItem(BuildContext context,int  index)
  {
    setState(() {
    InfoManager.instance.roomLocateInfoList.setCurrentIndex(index);
    InfoManager.instance.selectTapIndex(3);
    });    
  }
 

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blueAccent,child: Column(children: <Widget>[
      Expanded(child: _buildWebView(),),
      Expanded(child: _buildSuggestions())
    ],));
  }
}