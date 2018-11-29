import 'package:flutter_client_php_backend/models/VendorList.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_client_php_backend/models/Vendor.dart';

part 'VendorContainer.g.dart';

@JsonSerializable()
class VendorContainer extends Object  {
 List<Vendor> vendorList;
  VendorContainer(
      {this.vendorList});

  factory VendorContainer.fromJson(Map<String, dynamic> json) => _$VendorContainerFromJson(json);
  Map<String, dynamic> toJson() => _$VendorContainerToJson(this);    
}