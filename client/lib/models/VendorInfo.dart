import 'package:json_annotation/json_annotation.dart';

part 'VendorInfo.g.dart';

@JsonSerializable()
class VendorInfo extends Object  {
  String data_id;
  String vendor_name;
  String vendor_icon;
 
  
  VendorInfo(
      {this.data_id,
      this.vendor_name,
      this.vendor_icon,
   });

  factory VendorInfo.fromJson(Map<String, dynamic> json) => _$VendorInfoFromJson(json);
  Map<String, dynamic> toJson() => _$VendorInfoToJson(this);    
}