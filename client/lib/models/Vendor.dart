import 'package:json_annotation/json_annotation.dart';

part 'Vendor.g.dart';

@JsonSerializable()
class Vendor extends Object  {
  String data_id;
  String vendor_name = "";
  String vendor_icon = "";
 
  
  Vendor(
      {this.data_id,
      this.vendor_name,
      this.vendor_icon,
   });

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
  Map<String, dynamic> toJson() => _$VendorToJson(this);    
}