import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/manager/DataInfo.dart';
import 'package:flutter_client_php_backend/help_pages/vender_page.dart';
import 'package:flutter_client_php_backend/help_pages/house_page.dart';
import 'package:flutter_client_php_backend/help_pages/locate_page.dart';
import 'package:flutter_client_php_backend/help_pages/room_page.dart';
import 'package:flutter_client_php_backend/help_pages/roomview_page.dart';
import 'package:flutter_client_php_backend/models/UserInfo.dart';
import 'package:flutter_client_php_backend/models/UserInfoRequest.dart';
import 'package:flutter_client_php_backend/utils/app_shared_preferences.dart';
import 'package:flutter_client_php_backend/futures/userInfo_futures.dart';



class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> 
{
  UserInfo userInfo;
  String _title = "Product";
  String _userName = "UserName";
  String _userIconURL = 'https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true';

bool isReady = false;

  @override
  void initState() 
  {
    super.initState();
    InfoManager.instance.onDataReady = dataReady;
    InfoManager.instance.requestData();
  }

    void dataReady()
    {
      setState(() {
              isReady = true;
            });
    }

//------------------------------------------------------------------------------

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    if (userInfo == null) {
      await initUserProfile();
    }
  }

//------------------------------------------------------------------------------

  Future<void> initUserProfile() async {
   await AppSharedPreferences.getUserProfile().then(
      (loginUser){
          UserInfoRequest userInfoRequest = UserInfoRequest(data_id:loginUser.unique_id);
          getUserInfo(userInfoRequest).then((result){
          updateUserInfo(result.object);
         });
        }
        );        
  }

//------------------------------------------------------------------------------

    _ProductPageState()
    {
        InfoManager.instance.onSelectTapIndex = onTabTapped;
    }
  
    String assetBasePath = "http://www.alnytech.com/";
    void updateUserInfo(UserInfo newUserInfo)
    {
      setState(() {
        if(newUserInfo != null)
        {
          _userName = newUserInfo.user_name;
          _userIconURL = assetBasePath +  newUserInfo.user_icon;
        }
      });
     
    }

   

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
      Expanded(flex: 3,child: FlatButton(onPressed: getData, child:Text(_userName,textAlign: TextAlign.right,)),),
      Expanded(flex: 3, child: Padding(padding: EdgeInsets.all(5),child: Image.network(
              _userIconURL,
              fit: BoxFit.scaleDown,
            )),)],);
    }

    void getData()
    {
      InfoManager.instance.requestData();
    }

    @override
    Widget build(BuildContext context) 
    {

      if(!isReady)
      {
        return Container(color: Colors.blueAccent,);
      }
      else
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
    }

    void onTabTapped(int index)
    {
      setState(() {
        InfoManager.instance.setProductPageIndex(index);
      });
    }
}