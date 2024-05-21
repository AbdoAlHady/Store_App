import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/admin/add_products/data/data_source/product_admin_data_source.dart';
import 'package:store_app/features/admin/add_products/data/models/create_product_request_body.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';

class ProductAdminRepo {
  final ProductAdminDataSource _dataSource;

  ProductAdminRepo(this._dataSource);
  // Get All Products
  Future<ApiResult<GetAllProductsResponse>> getAllAdminProducts() async {
    try {
      final result = await _dataSource.getAllAdminProducts();
      return ApiResult.success(result);
    } catch (e) {
      debugPrint('======error in getAllAdminProducts repo :$e======');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }

  // Create New Product
  Future<ApiResult<void>> createNewProduct(
      CreateProductRequestBody body) async {
    try {
      final result = await _dataSource.cerateProduct(body);
      return ApiResult.success(result);
    } catch (e) {
      debugPrint('======Error in Create New Product repo :$e ======');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
  // Delete Product
  Future<ApiResult<void>> deleteProduct(String id) async {
    try {
      final result = await _dataSource.deleteProduct(id);
      return ApiResult.success(result);
    } catch (e) {
      debugPrint('======Error in Delete Product repo :$e ======');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
}
