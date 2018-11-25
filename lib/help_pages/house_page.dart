import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/models/DataInfo.dart';

class HousePage extends StatefulWidget {
  @override
  _HousePageState createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> 
{
   var _suggestions = <HouseInfo>[];
   var _biggerFont = const TextStyle(fontSize: 18.0);
  Widget _buildSuggestions() {
  _suggestions.clear();
  _suggestions.addAll(InfoManager.instance.filteredHouseInfo);
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
      _suggestions[index].infoName,
        style: _biggerFont,
      ),
    );
  }

  void _onTapItem(BuildContext context,int  index)
  {
    setState(() {
    InfoManager.instance.houseInfoList.setCurrentIndex(index);
    InfoManager.instance.selectTapIndex(2);
    });    
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blueAccent, child: _buildSuggestions());
  }
}
