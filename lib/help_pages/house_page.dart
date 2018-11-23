import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/models/DataInfo.dart';

class HousePage extends StatefulWidget {
 
  @override
  _HousePageState createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {
   var _suggestions = <HouseInfo>[];
   var _biggerFont = const TextStyle(fontSize: 18.0);

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
        pair.HouseName,
        style: _biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }
}
