import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/customer/home/data/data_source/home_data_source.dart';
import 'package:store_app/features/customer/home/data/models/banner_response.dart';

import '../../../../admin/add_categories/data/models/categories_response_model.dart';

class HomeRepo {
  final HomeDataSource _dataSource;

  HomeRepo(this._dataSource);

  // Get All Banners
  Future<ApiResult<BannersResponse>> getAllBanners() async {
    try {
      final result = await _dataSource.getAllBanners();
      return ApiResult.success(result);
    } catch (e) {
      debugPrint(' ==[Home Repo Get All Banners Error : ${e.toString()}]== ');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
  // Get all categories
  Future<ApiResult<CategoriesResponse>> getAllCategories()async {
    try {
      final result = await _dataSource.getAllCategoriesAdmin();
      return ApiResult.success(result);
    } catch (e) {
      debugPrint("===[Home Repo Categories Customer Error: $e]===");
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
}
