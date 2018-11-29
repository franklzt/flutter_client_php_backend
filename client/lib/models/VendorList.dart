import 'package:json_annotation/json_annotation.dart';

part 'VendorList.g.dart';

@JsonSerializable()
class VendorList extends Object  {
  List<VendorInfo> vendorList;
 
  
  VendorList(
      {this.vendorList,

   });

  factory VendorList.fromJson(Map<String, dynamic> json) => _$VendorListFromJson(json);
  Map<String, dynamic> toJson() => _$VendorListToJson(this);    
}