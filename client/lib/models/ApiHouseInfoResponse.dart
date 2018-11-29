import 'package:flutter_client_php_backend/models/ProductHouse.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ApiHouseInfoResponse.g.dart';

@JsonSerializable()
class ApiHouseInfoResponse extends Object {
  String result;
  String message;
  List<ProductHouse> houseList;

  ApiHouseInfoResponse({this.result, this.message, this.houseList});

  factory ApiHouseInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiHouseInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiHouseInfoResponseToJson(this);        
}
