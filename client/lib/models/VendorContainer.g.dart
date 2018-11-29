// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VendorContainer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorContainer _$VendorContainerFromJson(Map<String, dynamic> json) {
  return VendorContainer(
      vendorList: (json['vendorList'] as List)
          ?.map((e) =>
              e == null ? null : Vendor.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$VendorContainerToJson(VendorContainer instance) =>
    <String, dynamic>{'vendorList': instance.vendorList};
