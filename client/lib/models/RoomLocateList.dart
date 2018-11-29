import 'package:flutter_client_php_backend/models/RoomLocate.dart';
import 'package:json_annotation/json_annotation.dart';

part 'RoomLocateList.g.dart';

@JsonSerializable()
class RoomLocateList extends Object  {
  List<RoomLocate> locateList;
   
  RoomLocateList(
      {this.locateList});

  factory RoomLocateList.fromJson(Map<String, dynamic> json) => _$RoomLocateListFromJson(json);
  Map<String, dynamic> toJson() => _$RoomLocateListToJson(this);    
}