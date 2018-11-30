import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/utils/constants.dart';
class WebIcon extends StatelessWidget 
{
  final BoxFit _fit;
  final String _iconUrl;
  WebIcon(this._iconUrl,this._fit); 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child:Container(child:
      Image.network(
          APIConstants.IconBase + _iconUrl,
          fit: _fit,)
    ));
  }
}