// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiUserInfoRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUserInfoRequest _$ApiUserInfoRequestFromJson(Map<String, dynamic> json) {
  return ApiUserInfoRequest(
      operation: json['operation'] as String,
      userInfoRequest: json['userInfoRequest'] == null
          ? null
          : UserInfoRequest.fromJson(
              json['userInfoRequest'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ApiUserInfoRequestToJson(ApiUserInfoRequest instance) =>
    <String, dynamic>{
      'operation': instance.operation,
      'userInfoRequest': instance.userInfoRequest
    };
