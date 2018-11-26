// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      name: json['name'] as String,
      email: json['email'] as String,
      unique_id: json['unique_id'] as String,
      password: json['password'] as String,
      old_password: json['old_password'] as String,
      new_password: json['new_password'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'unique_id': instance.unique_id,
      'password': instance.password,
      'old_password': instance.old_password,
      'new_password': instance.new_password
    };
