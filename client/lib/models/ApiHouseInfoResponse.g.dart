// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiHouseInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiHouseInfoResponse _$ApiHouseInfoResponseFromJson(Map<String, dynamic> json) {
  return ApiHouseInfoResponse(
      result: json['result'] as String,
      message: json['message'] as String,
      houseList: json['houseList'] == null
          ? null
          : ProductHouseList.fromJson(
              json['houseList'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ApiHouseInfoResponseToJson(
        ApiHouseInfoResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'houseList': instance.houseList
    };
