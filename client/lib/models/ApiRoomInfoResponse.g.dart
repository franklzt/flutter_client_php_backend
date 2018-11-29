// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiRoomInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiRoomInfoResponse _$ApiRoomInfoResponseFromJson(Map<String, dynamic> json) {
  return ApiRoomInfoResponse(
      result: json['result'] as String,
      message: json['message'] as String,
      roomDetailsList: (json['roomDetailsList'] as List)
          ?.map((e) =>
              e == null ? null : RoomInfo.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ApiRoomInfoResponseToJson(
        ApiRoomInfoResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'roomDetailsList': instance.roomDetailsList
    };
