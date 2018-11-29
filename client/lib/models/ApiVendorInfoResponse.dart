import 'package:flutter_client_php_backend/models/Vendor.dart';
import 'package:flutter_client_php_backend/models/VendorContainer.dart';
import 'package:flutter_client_php_backend/models/VendorList.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ApiVendorInfoResponse.g.dart';

@JsonSerializable()
class ApiVendorInfoResponse extends Object {
  String result;
  String message;
  List<Vendor> vendorContainer;

  ApiVendorInfoResponse({this.result, this.message, this.vendorContainer});

  factory ApiVendorInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiVendorInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVendorInfoResponseToJson(this);        
}
