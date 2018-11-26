import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/manager/DataInfo.dart';

class VenderPage extends StatefulWidget {
  @override
  _VenderPageState createState() => _VenderPageState();
}


class _VenderPageState extends State<VenderPage> 
{
  final _suggestions = <VerderInfo>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

    _VenderPageState()
    {
      _suggestions.addAll(InfoManager.instance.verderInfoList.dataList);
      InfoManager.instance.verderInfoList.setCurrentIndex(0);
    }

  Widget _buildSuggestions(BuildContext context) 
  {     
      return ListView.builder(
        itemCount: 20,
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
      title: Text(
      _suggestions[position].infoName,
      style: _biggerFont,
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
    return Container(
          color: Colors.blue,
          child:_buildSuggestions(context));    
  }
}