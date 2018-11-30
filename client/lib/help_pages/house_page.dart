import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/help_pages/webIcon.dart';
import 'package:flutter_client_php_backend/manager/DataInfo.dart';

class HousePage extends StatefulWidget {
  @override
  _HousePageState createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> 
{
   var _suggestions = <HouseInfo>[];
  @override
  void initState() {
      super.initState();
      _suggestions = InfoManager.instance.filteredHouseInfo;
      InfoManager.instance.houseInfoList.setCurrentIndex(0);

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
       title: WebIcon(
      _suggestions[index].name,BoxFit.scaleDown
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
