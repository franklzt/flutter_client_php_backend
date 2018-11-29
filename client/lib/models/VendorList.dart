import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_client_php_backend/models/Vendor.dart';

part 'VendorList.g.dart';

@JsonSerializable()
class VendorList extends Object  {
  List<Vendor> vendorList = List<Vendor>();
   
  VendorList(
      {this.vendorList});

  factory VendorList.fromJson(Map<String, dynamic> json) => _$VendorListFromJson(json);
  Map<String, dynamic> toJson() => _$VendorListToJson(this);    
}