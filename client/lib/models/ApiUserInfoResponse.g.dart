// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiUserInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUserInfoResponse _$ApiUserInfoResponseFromJson(Map<String, dynamic> json) {
  return ApiUserInfoResponse(
      result: json['result'] as String,
      message: json['message'] as String,
      userInfo: json['userInfo'] == null
          ? null
          : UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ApiUserInfoResponseToJson(
        ApiUserInfoResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'userInfo': instance.userInfo
    };
