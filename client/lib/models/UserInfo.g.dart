// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
      dataId: json['dataId'] as String,
      userIcon: json['userIcon'] as String,
      userName: json['userName'] as String,
      department: json['department'] as String,
      empolyeeID: json['empolyeeID'] as String);
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'dataId': instance.dataId,
      'userIcon': instance.userIcon,
      'userName': instance.userName,
      'department': instance.department,
      'empolyeeID': instance.empolyeeID
    };
