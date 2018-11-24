import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/models/DataInfo.dart';
import 'package:flutter_client_php_backend/help_pages/house_page.dart';

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
      _suggestions.addAll(InfoManager.instance.getVenderList());
      InfoManager.instance.setCurrentVerder(_suggestions[0]);
    }

Widget _buildSuggestions(BuildContext context) 
{     
    return ListView.builder(
      itemCount: 20,
      padding: const EdgeInsets.all(16.0),            
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
         return _buildRow(context,_suggestions[index],index);
      },      
    );
  }

  Widget _buildRow(BuildContext context,VerderInfo pair,int position) {
    return ListTile(
      onTap: () => _onTapItem(context, _suggestions[position]),
      title: Text(
        pair.infoName,
        style: _biggerFont,
      ),
    );
  }

void _onTapItem(BuildContext context,VerderInfo item)
{
  setState(() {
    InfoManager.instance.setCurrentVerder(item);
    build(context);
  });
  
}

Widget buildHousePage(BuildContext context,VerderInfo item) {
    return HousePage(); 
  }

  @override
  Widget build(BuildContext context) 
  {
    return Container(
          color: Colors.blue,
          child:Row( 
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[ 
            Container( width: 150, color: Colors.red,child: _buildSuggestions(context)),
            Expanded(child:Container(child: buildHousePage(context,InfoManager.instance.currentVerder),))],
            ));    
  }
}