import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/core/networking/graphql_quries/auth/auth_queries.dart';
import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/models/login_response.dart';


class AuthDataSource {
  final ApiService _apiService;

  AuthDataSource(ApiService apiService) : _apiService = apiService;

  // Login
  Future<LoginResponse> login({required LoginRequestBody body}) async {
    final response = await _apiService.login(AuthQueries().loginMapQuery(body));
    return response;
  }

  // User Role
  // Future<UserRole> getUserRole() async {
  //   final response = _apiService.getUserRole(body);
  // }
}
