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
      String webUrl = InfoManager.instance.houseInfoList.getCurrentItem().url;
      webview = WebViewPage(webUrl);
      return webview;
    }

  var _suggestions = <RoomLocateInfo>[];
  var _biggerFont = const TextStyle(fontSize: 18.0);
 
 @override
 void initState() {
     super.initState();     
    _suggestions =InfoManager.instance.filteredRoomLocateInfo;
    InfoManager.instance.roomLocateInfoList.setCurrentIndex(0);
   }
    @override
    void dispose() {
      super.dispose();
    }




  Widget _buildSuggestions() {
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
       _suggestions[index].name,
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