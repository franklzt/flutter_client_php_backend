import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/models/DataInfo.dart';
import 'package:flutter_client_php_backend/help_pages/vender_page.dart';
import 'package:flutter_client_php_backend/help_pages/house_page.dart';
import 'package:flutter_client_php_backend/help_pages/locate_page.dart';
import 'package:flutter_client_php_backend/help_pages/room_page.dart';
import 'package:flutter_client_php_backend/help_pages/roomview_page.dart';


class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> 
{

    _ProductPageState()
    {
        InfoManager.instance.onSelectTapIndex = onTabTapped;
    }
  

   String _title = "Product";
   String _userName = "UserName";
   String _userIconURL = 'https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true';

    int _currentIndex = 0;
    final List<Widget> _children = 
    [
      VenderPage(),
      HousePage(),
      LocatePage(),
      RoomPage(),
      RoomViewPage(),
    ];


Widget _buildTitle()
{
  return Row(children: <Widget>[
  Text(_title), 
  Expanded(flex: 3,child: Text(_userName,textAlign: TextAlign.right,),),
  Expanded(flex: 3, child: Padding(padding: EdgeInsets.all(5),child: Image.network(
          _userIconURL,
          fit: BoxFit.scaleDown,
        )),)],);
}


    @override
    Widget build(BuildContext context) 
    {
      return Scaffold(
        appBar: AppBar(
          title: _buildTitle(),
        ),
        body: _children[InfoManager.instance.productPageIndex], // new
        bottomNavigationBar: Container(
          color: Colors.blueAccent,
          child: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: InfoManager.instance.productPageIndex, // new
          items: [
            new BottomNavigationBarItem(
              backgroundColor: Colors.blueAccent,
              icon: Icon(Icons.home),
              title: Text('Verder')
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('House'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Location'),
              
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Room'),
              
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('RoomView'),
              
            )
          ],
        )),
      );
    }

    void onTabTapped(int index)
    {
      setState(() {
        InfoManager.instance.setProductPageIndex(index);
      });
    }
}