import 'package:flutter_client_php_backend/models/RoomInfo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ApiRoomInfoResponse.g.dart';

@JsonSerializable()
class ApiRoomInfoResponse extends Object {
  String result;
  String message;
  List<RoomInfo> roomDetailsList;

  ApiRoomInfoResponse({this.result, this.message, this.roomDetailsList});

  factory ApiRoomInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiRoomInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiRoomInfoResponseToJson(this);        
}
