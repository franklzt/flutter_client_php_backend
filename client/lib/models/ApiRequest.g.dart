// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiRequest _$ApiRequestFromJson(Map<String, dynamic> json) {
  return ApiRequest(
      operation: json['operation'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ApiRequestToJson(ApiRequest instance) =>
    <String, dynamic>{'operation': instance.operation, 'user': instance.user};
