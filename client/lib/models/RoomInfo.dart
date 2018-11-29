import 'package:json_annotation/json_annotation.dart';

part 'RoomInfo.g.dart';

@JsonSerializable()
class RoomInfo extends Object  {
  String data_id;
  String title;
  String description;
  String icon_name;
  String web;
  String locate_id;
  
  RoomInfo(
      {this.data_id,
      this.title,
      this.description,
      this.icon_name,
      this.web,this.locate_id});

  factory RoomInfo.fromJson(Map<String, dynamic> json) => _$RoomInfoFromJson(json);
  Map<String, dynamic> toJson() => _$RoomInfoToJson(this);    
}