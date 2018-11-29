// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RoomInfoList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomInfoList _$RoomInfoListFromJson(Map<String, dynamic> json) {
  return RoomInfoList(
      roomDetailsList: (json['roomDetailsList'] as List)
          ?.map((e) =>
              e == null ? null : RoomInfo.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$RoomInfoListToJson(RoomInfoList instance) =>
    <String, dynamic>{'roomDetailsList': instance.roomDetailsList};
