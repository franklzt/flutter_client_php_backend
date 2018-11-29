import 'package:json_annotation/json_annotation.dart';

part 'ProductHouse.g.dart';

@JsonSerializable()
class ProductHouse extends Object  {
  String data_id;
  String house_title;
  String house_icon;
  String vendor_id;
  String web;

  ProductHouse(
      {this.data_id,
      this.house_title,
      this.house_icon,
      this.vendor_id,
      this.web});

  factory ProductHouse.fromJson(Map<String, dynamic> json) => _$ProductHouseFromJson(json);
  Map<String, dynamic> toJson() => _$ProductHouseToJson(this);    
}