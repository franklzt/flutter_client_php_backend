// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
      data_id: json['data_id'] as String,
      user_icon: json['user_icon'] as String,
      user_name: json['user_name'] as String,
      department: json['department'] as String,
      employee_id: json['employee_id'] as String);
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'data_id': instance.data_id,
      'user_icon': instance.user_icon,
      'user_name': instance.user_name,
      'department': instance.department,
      'employee_id': instance.employee_id
    };
