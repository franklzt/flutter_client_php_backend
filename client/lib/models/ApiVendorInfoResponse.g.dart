// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiVendorInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVendorInfoResponse _$ApiVendorInfoResponseFromJson(
    Map<String, dynamic> json) {
  return ApiVendorInfoResponse(
      result: json['result'] as String,
      message: json['message'] as String,
      vendorList: (json['vendorList'] as List)
          ?.map((e) =>
              e == null ? null : Vendor.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ApiVendorInfoResponseToJson(
        ApiVendorInfoResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'vendorList': instance.vendorList
    };
