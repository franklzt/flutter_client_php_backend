import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/help_pages/webIcon.dart';
import 'package:flutter_client_php_backend/manager/DataInfo.dart';

class VenderPage extends StatefulWidget {
  @override
  _VenderPageState createState() => _VenderPageState();
}

class _VenderPageState extends State<VenderPage> 
{
  List<VerderInfo> _suggestions = <VerderInfo>[];
  int _dataLength = 0;
 
  @override
  void initState()
    {
      super.initState();
      _suggestions =InfoManager.instance.verderInfoList.dataList;
      _dataLength = _suggestions.length;
      InfoManager.instance.verderInfoList.setCurrentIndex(0);
    }

  Widget _buildSuggestions(BuildContext context) 
  {     
      return ListView.builder(
        itemCount: _dataLength * 2,
        padding: const EdgeInsets.all(16.0),            
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          return _buildRow(context,index);
        },      
      );
    }

  Widget _buildRow(BuildContext context,int position) {
    print(_suggestions[position].infoName);
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
    if(_dataLength <= 0)
    {
      return Container(color: Colors.blue);
    }
    return Container(
          color: Colors.blue,
          child:_buildSuggestions(context));    
  }
}