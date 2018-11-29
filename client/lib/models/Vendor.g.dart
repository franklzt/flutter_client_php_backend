// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return Vendor(
      data_id: json['data_id'] as String,
      vendor_name: json['vendor_name'] as String,
      vendor_icon: json['vendor_icon'] as String);
}

Map<String, dynamic> _$VendorToJson(Vendor instance) => <String, dynamic>{
      'data_id': instance.data_id,
      'vendor_name': instance.vendor_name,
      'vendor_icon': instance.vendor_icon
    };
