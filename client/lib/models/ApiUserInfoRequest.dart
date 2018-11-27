/*
 * Copyright 2018 Harsh Sharma
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import 'package:flutter_client_php_backend/models/UserInfoRequest.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ApiUserInfoRequest.g.dart';

@JsonSerializable()
class ApiUserInfoRequest extends Object  {
  String operation;
  UserInfoRequest userInfoRequest;
  ApiUserInfoRequest({this.operation, this.userInfoRequest});

  factory ApiUserInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$ApiUserInfoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUserInfoRequestToJson(this);    
  
}
