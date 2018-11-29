// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RoomInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomInfo _$RoomInfoFromJson(Map<String, dynamic> json) {
  return RoomInfo(
      data_id: json['data_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      icon_name: json['icon_name'] as String,
      web: json['web'] as String,
      locate_id: json['locate_id'] as String);
}

Map<String, dynamic> _$RoomInfoToJson(RoomInfo instance) => <String, dynamic>{
      'data_id': instance.data_id,
      'title': instance.title,
      'description': instance.description,
      'icon_name': instance.icon_name,
      'web': instance.web,
      'locate_id': instance.locate_id
    };
