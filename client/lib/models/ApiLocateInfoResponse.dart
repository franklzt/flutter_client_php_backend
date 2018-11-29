import 'package:flutter_client_php_backend/models/RoomLocateList.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ApiLocateInfoResponse.g.dart';

@JsonSerializable()
class ApiLocateInfoResponse extends Object {
  String result;
  String message;
  RoomLocateList locateList;

  ApiLocateInfoResponse({this.result, this.message, this.locateList});

  factory ApiLocateInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiLocateInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiLocateInfoResponseToJson(this);        
}
