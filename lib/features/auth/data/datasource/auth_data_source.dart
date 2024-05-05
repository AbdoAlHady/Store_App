import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/core/networking/graphql_quries/auth/auth_queries.dart';
import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/models/login_response.dart';

import '../models/user_role.dart';

class AuthDataSource {
  final ApiService _apiService;

  AuthDataSource(ApiService apiService) : _apiService = apiService;

  // Login
  Future<LoginResponse> login({required LoginRequestBody body}) async {
    final response = await _apiService.login(AuthQueries().loginMapQuery(body));
    return response;
  }

  // User Role
  Future<UserRole> getUserRole({required String token}) async {
    Dio dio = Dio();
    final client = ApiService(dio);
    dio.options.headers['Authorization'] = 'Bearer $token';
    final response = await client.getUserRole();
    debugPrint('[USER ROLE]: ${response.role}');
    return response;
  }
}
