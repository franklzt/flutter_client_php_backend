// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RoomLocate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomLocate _$RoomLocateFromJson(Map<String, dynamic> json) {
  return RoomLocate(
      data_id: json['data_id'] as String,
      locate_name: json['locate_name'] as String,
      house_id: json['house_id'] as String);
}

Map<String, dynamic> _$RoomLocateToJson(RoomLocate instance) =>
    <String, dynamic>{
      'data_id': instance.data_id,
      'locate_name': instance.locate_name,
      'house_id': instance.house_id
    };
