import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/help_pages/page_decoration.dart';
import 'package:flutter_client_php_backend/help_pages/webIcon.dart';
import 'package:flutter_client_php_backend/manager/DataInfo.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {


String _title = "";
String _des = "";
String _icon = "";
int _length = 0;
int _index = 0;


  int _dataLength = 0;
 
 @override
 void initState() {
     super.initState();
     InfoManager.instance.onDataReady = dataReady;
   }

  @override
  void didChangeDependencies() {
      super.didChangeDependencies();
      dataReady();
    }

  void dataReady()
  {
    setState(() {     
    _dataLength = InfoManager.instance.verderInfoList.dataList.length;
    InfoManager.instance.verderInfoList.setCurrentIndex(0);
    }); 
  }  


Widget _buildImage()
{
  return Container(alignment: Alignment.center,child: PageDecoration(WebIcon(
          _icon,
           BoxFit.cover)));
}

void _updateData()
{
  setState(() {
       RoomDetailInfo details = InfoManager.instance.getCurrentRoomDetailsInfo;
       _length = InfoManager.instance.filteredRommDetailsInfo.length;
      _title = details.title;
      _des =   details.des;
      _icon = details.iconName;
    });
 
}

Widget _buildTitle()
{
  return PageDecoration(
  Padding(padding: EdgeInsets.all(5),
  child:Text(_title,textAlign: TextAlign.left,maxLines: 1, 
  style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)));
}

Widget _buildDes()
{  
  return PageDecoration(Text(_des,textAlign: TextAlign.left,softWrap: true,maxLines: 20,style:TextStyle(fontSize: 15)));
}


Widget _buildButtons()
{
  return PageDecoration( Row(
    children: <Widget>[
      Expanded(child: _buildButton("<",onForward)),
      Expanded(child: _buildButton("360",onViewScene)),
      Expanded(child: _buildButton(">",onBackward)),
      ]));
}


void onForward()
{
  setState(() {
      _index--;
    if(_index <0){_index = InfoManager.instance.filteredRommDetailsInfo.length -1;}
    _buildWidget();
    });
  

}

void onBackward()
{
setState(() {
      _index++;
    if(_index >= InfoManager.instance.filteredRommDetailsInfo.length){_index = 0;}
    _buildWidget();
    });
}

void onViewScene()
{
  setState(() {
        InfoManager.instance.selectTapIndex(4);
    });
}



Widget _buildButton(String text,VoidCallback onPressed)
{
  return PageDecoration(FlatButton(child: Text(text),onPressed: onPressed,));
}


Widget _buildWidget()
{
  InfoManager.instance.setDetailIndex(_index);
  _updateData();
  return Container(
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(flex: 1, child: _buildTitle(),),
          Expanded(flex:5,child: _buildDes(),),
          Expanded(flex: 5, child: _buildImage(),),
          Expanded(flex:1,child: _buildButtons(),)],
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return _buildWidget();
  }
}