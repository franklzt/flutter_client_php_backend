import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/futures/userInfo_futures.dart';
import 'package:flutter_client_php_backend/models/UserInfoRequest.dart';


class PhpTest extends StatefulWidget {
  @override
  _PhpTestState createState() => _PhpTestState();
}

class _PhpTestState extends State<PhpTest> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("PHP Test"),
        ),
        body: Container( color: Colors.lightBlueAccent, child: Center(child: Column(children: <Widget>[FlatButton(onPressed: phptest,child: Text("Php test"),)],) ))
     ); // new
  }


  void phptest()
  { 
      UserInfoRequest userInfoRequest =  UserInfoRequest(data_id:"5bf787c62224b2.55568314");
           getUserInfo(userInfoRequest).then((result){
           
          
         });
  }
}