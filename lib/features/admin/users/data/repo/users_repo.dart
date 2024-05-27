import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/admin/users/data/data_source/users_data_source.dart';

import '../models/get_all_users_response.dart';

class UsersRepo {
  final UsersDataSource _dataSource;

  UsersRepo(this._dataSource);

  // Get All Users
  Future<ApiResult<GetAllUsersResponse>> getAllUsers() async {
    try {
      final result = await _dataSource.getAllUsers();
      return ApiResult.success(result);
    } catch (e) {
      debugPrint('===[Error in Get All Users Repo : ${e.toString()}]===');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
}
