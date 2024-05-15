import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/admin/add_categories/data/data_source/categories_admin_data_source.dart';
import 'package:store_app/features/admin/add_categories/data/models/categories_response_model.dart';
import 'package:store_app/features/admin/add_categories/data/models/create_category_request_body.dart';

class CategoriesAdminRepo {
  final CategoriesAdminDataSource _dataSource;

  CategoriesAdminRepo(this._dataSource);

  // Get all categories
  Future<ApiResult<CategoriesResponse>> getAllCategoriesAdmin() async {
    try {
      final result = await _dataSource.getAllCategoriesAdmin();
      return ApiResult.success(result);
    } catch (e) {
      debugPrint("===Categories Admin Error ====: $e");
      return const ApiResult.failure(AppString.errorMessage);
    }
  }

  // Create category
  Future<ApiResult> createCategory(CreateCategoryRequestBody body) async {
    try {
      final result = await _dataSource.createCategory(body);
      return ApiResult.success(result);
    } catch (e) {
      debugPrint("=== Create Category Error ====: $e");
      return const ApiResult.failure(AppString.errorMessage);
    }
  }

  // Delete category
  Future<ApiResult<void>> deleteCategory(String categoryId) async {
    try {
      final result = await _dataSource.deleteCategory(categoryId);
      return ApiResult.success(result);
    } catch (e) {
      debugPrint("=== Delete Category Error ====: $e");
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
}
