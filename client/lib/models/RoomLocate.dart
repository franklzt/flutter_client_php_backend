import 'package:json_annotation/json_annotation.dart';

part 'RoomLocate.g.dart';

@JsonSerializable()
class RoomLocate extends Object  {
  int data_id;
  String locate_name;
  int house_id;
 
  
  RoomLocate(
      {this.data_id,
      this.locate_name,
      this.house_id,
    });

  factory RoomLocate.fromJson(Map<String, dynamic> json) => _$RoomLocateFromJson(json);
  Map<String, dynamic> toJson() => _$RoomLocateToJson(this);    
}