import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/help_pages/webIcon.dart';
import 'package:flutter_client_php_backend/manager/DataInfo.dart';

class VenderPage extends StatefulWidget {
  @override
  _VenderPageState createState() => _VenderPageState();
}


class _VenderPageState extends State<VenderPage> 
{
  final _suggestions = <VerderInfo>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  int dataLength = 0;

  _VenderPageState()
  {
    InfoManager.instance.onDataReady = dataReady;     
  }

  void dataReady()
  {
    setState(() {
    dataLength = InfoManager.instance.verderInfoList.dataList.length;
    _suggestions.addAll(InfoManager.instance.verderInfoList.dataList);
    InfoManager.instance.verderInfoList.setCurrentIndex(0);
    }); 
  }  

  Widget _buildSuggestions(BuildContext context) 
  {     
      return ListView.builder(
        itemCount: dataLength * 2,
        padding: const EdgeInsets.all(16.0),            
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          return _buildRow(context,index);
        },      
      );
    }

  Widget _buildRow(BuildContext context,int position) {
    return ListTile(
      onTap: () => _onTapItem(context, position),
      title: WebIcon(
      _suggestions[position].infoName,BoxFit.scaleDown
      ),
    );
  }

void _onTapItem(BuildContext context,int  index)
{
  setState(() {
  InfoManager.instance.verderInfoList.setCurrentIndex(index);
  InfoManager.instance.selectTapIndex(1);
  });
  
}
  @override
  Widget build(BuildContext context) 
  {
    if(dataLength <= 0)
    {
      return Container(color: Colors.blue);
    }
    return Container(
          color: Colors.blue,
          child:_buildSuggestions(context));    
  }
}