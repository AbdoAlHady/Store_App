import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/auth/data/datasource/auth_data_source.dart';
import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/models/login_response.dart';

import '../models/user_role.dart';

class AuthRepo {
  final AuthDataSource _authDataSource;

  AuthRepo(this._authDataSource);

  // Login
  Future<ApiResult<LoginResponse>> login(
      {required LoginRequestBody body}) async {
    try {
      final response = await _authDataSource.login(body: body);
      return ApiResult.success(response);
    } catch (e) {
      debugPrint(' Error in login: $e');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }

  // User Role
  Future<UserRole> getUserRole(String token) async {
    final response = _authDataSource.getUserRole(token: token);
    return response;
  }
}
