// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VendorList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorList _$VendorListFromJson(Map<String, dynamic> json) {
  return VendorList(
      vendorList: (json['vendorList'] as List)
          ?.map((e) =>
              e == null ? null : Vendor.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$VendorListToJson(VendorList instance) =>
    <String, dynamic>{'vendorList': instance.vendorList};
