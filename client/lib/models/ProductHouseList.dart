import 'package:flutter_client_php_backend/models/ProductHouse.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ProductHouseList.g.dart';

@JsonSerializable()
class ProductHouseList extends Object  {
  List<ProductHouse> houseList;
   
  ProductHouseList(
      {this.houseList});

  factory ProductHouseList.fromJson(Map<String, dynamic> json) => _$ProductHouseListFromJson(json);
  Map<String, dynamic> toJson() => _$ProductHouseListToJson(this);    
}