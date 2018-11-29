// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiLocateInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLocateInfoResponse _$ApiLocateInfoResponseFromJson(
    Map<String, dynamic> json) {
  return ApiLocateInfoResponse(
      result: json['result'] as String,
      message: json['message'] as String,
      locateList: (json['locateList'] as List)
          ?.map((e) =>
              e == null ? null : RoomLocate.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ApiLocateInfoResponseToJson(
        ApiLocateInfoResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'locateList': instance.locateList
    };
