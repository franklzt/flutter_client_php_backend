// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductHouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductHouse _$ProductHouseFromJson(Map<String, dynamic> json) {
  return ProductHouse(
      data_id: json['data_id'] as String,
      house_title: json['house_title'] as String,
      house_icon: json['house_icon'] as String,
      vendor_id: json['vendor_id'] as String,
      web: json['web'] as String);
}

Map<String, dynamic> _$ProductHouseToJson(ProductHouse instance) =>
    <String, dynamic>{
      'data_id': instance.data_id,
      'house_title': instance.house_title,
      'house_icon': instance.house_icon,
      'vendor_id': instance.vendor_id,
      'web': instance.web
    };
