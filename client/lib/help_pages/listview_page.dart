import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/manager/DataInfo.dart';

typedef CreateInfoData = Iterable<T> Function<T extends BaseInfo>();

class ListViewPage<T extends BaseInfo > extends StatefulWidget 
{
  final CreateInfoData _dataGenerator;
  ListViewPage(this._dataGenerator);
  @override
  _ListViewPageState createState() => _ListViewPageState<T>(_dataGenerator);
}

class _ListViewPageState<T extends BaseInfo > extends State<ListViewPage>  {

  _ListViewPageState(this._dataGenerator);
  CreateInfoData _dataGenerator;

  var _suggestions = <T>[];
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
  _suggestions.addAll(_dataGenerator());
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

  Widget _buildRow(T baseinfo) {
    return ListTile(
      title: Text(
        baseinfo.infoName,
        style: _biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(child:_buildSuggestions());
  }
}