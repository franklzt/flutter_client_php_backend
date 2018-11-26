// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return ApiResponse(
      result: json['result'] as String,
      message: json['message'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'user': instance.user
    };
