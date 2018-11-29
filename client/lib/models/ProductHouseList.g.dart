// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductHouseList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductHouseList _$ProductHouseListFromJson(Map<String, dynamic> json) {
  return ProductHouseList(
      houseList: (json['houseList'] as List)
          ?.map((e) => e == null
              ? null
              : ProductHouse.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ProductHouseListToJson(ProductHouseList instance) =>
    <String, dynamic>{'houseList': instance.houseList};
