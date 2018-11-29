import 'package:flutter_client_php_backend/models/Vendor.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ApiVendorInfoResponse.g.dart';

@JsonSerializable()
class ApiVendorInfoResponse extends Object {
  String result;
  String message;
  List<Vendor> vendorList;

  ApiVendorInfoResponse({this.result, this.message, this.vendorList});

  factory ApiVendorInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiVendorInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVendorInfoResponseToJson(this);        
}
