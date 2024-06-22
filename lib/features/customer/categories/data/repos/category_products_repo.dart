import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';

import '../../../../admin/add_products/data/models/get_all_products_response.dart';
import '../data_source/category_products_data_source.dart';

class CategoryProductsRepo {
  final CategoryProductsDataSource _dataSource;

  CategoryProductsRepo(this._dataSource);

  // Category Products
  Future<ApiResult<GetAllProductsResponse> >getCategoryProducts(int categoryid) async {
    try {
      final result = await _dataSource.getCategoryProducts(categoryid);
      return ApiResult.success(result);
    } catch (e) {
      debugPrint('===[Category Products Repo (Get Category Products) Error : $e]===');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
}
