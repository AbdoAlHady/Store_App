import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/features/admin/users/data/models/get_all_users_response.dart';

import '../../../../../core/networking/graphql_quries/admin/users_admin_queries.dart';

class UsersDataSource {
  final ApiService _apiService;

  UsersDataSource(this._apiService);

  // Get All Users
  Future<GetAllUsersResponse> getAllUsers() async {
    final response =
        await _apiService.getAllUsers(UsersAdminQueries().getAllUsersQuery());
    return response;
  }

  // Delet User
  Future<void> deleteUser(String userId) async {
   final response= await _apiService.deleteUser(UsersAdminQueries().deleteUser(userId));
    return response;
  }
}
