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

import 'dart:async';
import 'dart:convert';

import 'package:flutter_client_php_backend/models/ApiUserInfoResponse.dart';
import 'package:flutter_client_php_backend/models/UserInfoRequest.dart';
import 'package:flutter_client_php_backend/models/base/EventObject.dart';
import 'package:flutter_client_php_backend/utils/constants.dart';
import 'package:http/http.dart' as http;

///////////////////////////////////////////////////////////////////////////////
Future<EventObject> getUserInfo(UserInfoRequest userReuest) async 
{
  try {
    final encoding = APIConstants.OCTET_STREAM_ENCODING;
    final response = await http.post(APIConstants.API_USERINFO_URL,
        body: json.encode(userReuest.toJson()),
        encoding: Encoding.getByName(encoding));
    if (response != null) {
      if (response.statusCode == APIResponseCode.SC_OK &&
          response.body != null) {
        final responseJson = json.decode(response.body);       
        ApiUserInfoResponse apiResponse = ApiUserInfoResponse.fromJson(responseJson);
        if (apiResponse.result == APIOperations.SUCCESS) {
          return new EventObject(
              id: EventConstants.LOGIN_USER_SUCCESSFUL,
              object: apiResponse.userInfo);
        } else {
          return new EventObject(id: EventConstants.LOGIN_USER_UN_SUCCESSFUL);
        }
      } else {
        return new EventObject(id: EventConstants.LOGIN_USER_UN_SUCCESSFUL);
      }
    } else {
      return new EventObject();
    }
  } catch (Exception) {
    return EventObject();
  }
}

///////////////////////////////////////////////////////////////////////////////