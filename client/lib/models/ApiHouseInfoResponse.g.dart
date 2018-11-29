// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiHouseInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiHouseInfoResponse _$ApiHouseInfoResponseFromJson(Map<String, dynamic> json) {
  return ApiHouseInfoResponse(
      result: json['result'] as String,
      message: json['message'] as String,
      houseList: (json['houseList'] as List)
          ?.map((e) => e == null
              ? null
              : ProductHouse.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ApiHouseInfoResponseToJson(
        ApiHouseInfoResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'houseList': instance.houseList
    };
