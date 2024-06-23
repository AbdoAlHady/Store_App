import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';
import 'package:store_app/features/customer/products/data/data_source/products_data_source.dart';
import 'package:store_app/features/customer/products/data/models/product_details_response.dart';

class ProductsRepo {
  final ProductsDataSource _dataSource;

  ProductsRepo(this._dataSource);

  // Get Ptoduct Details
  Future<ApiResult<ProductDetailsResponse>> getProductDetails(
      int productId) async {
    try {
      final result = await _dataSource.getProuductDetails(productId);
      return ApiResult.success(result);
    } catch (e) {
      debugPrint('===[Product Details Repo (Get Product Details) Error :$e]===');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }

  // View All Products
  Future<ApiResult<GetAllProductsResponse>> viewAllProducts(int offset) async {
    try {
      final result = await _dataSource.viewAllProducts(offset);
      return ApiResult.success(result);
    } catch (e) {
      debugPrint('===[Product Details Repo (View All Products) Error :$e]===');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
}
