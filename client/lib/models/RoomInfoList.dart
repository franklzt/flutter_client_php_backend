import 'package:flutter_client_php_backend/models/RoomInfo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'RoomInfoList.g.dart';

@JsonSerializable()
class RoomInfoList extends Object  {
  List<RoomInfo> roomDetailsList;
   
  RoomInfoList(
      {this.roomDetailsList});

  factory RoomInfoList.fromJson(Map<String, dynamic> json) => _$RoomInfoListFromJson(json);
  Map<String, dynamic> toJson() => _$RoomInfoListToJson(this);    
}