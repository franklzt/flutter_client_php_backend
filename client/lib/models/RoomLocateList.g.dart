// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RoomLocateList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomLocateList _$RoomLocateListFromJson(Map<String, dynamic> json) {
  return RoomLocateList(
      locateList: (json['locateList'] as List)
          ?.map((e) =>
              e == null ? null : RoomLocate.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$RoomLocateListToJson(RoomLocateList instance) =>
    <String, dynamic>{'locateList': instance.locateList};
