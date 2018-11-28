import 'package:json_annotation/json_annotation.dart';

part 'VendorRequest.g.dart';

@JsonSerializable()
class VendorRequest extends Object {
  String operation;
 

  VendorRequest(
      {this.operation,
      });

  factory VendorRequest.fromJson(Map<String, dynamic> json) => _$VendorRequestFromJson(json);
  Map<String, dynamic> toJson() => _$VendorRequestToJson(this);    
}