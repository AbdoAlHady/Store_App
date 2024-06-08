import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/auth/data/models/user_model.dart';
import 'package:store_app/features/customer/profile/data/data_source/profile_data_source.dart';

class ProfileRepos {
   final ProfileDataSource _dataSource;

  ProfileRepos(this._dataSource);

  // Get User Info
  Future<ApiResult<UserModel>> getUserInfo() async {
    try {
      final result = await _dataSource.getUserInfo();
      return ApiResult.success(result);
    } catch (e) {
      debugPrint('===> getUserInfo error: $e');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
}
