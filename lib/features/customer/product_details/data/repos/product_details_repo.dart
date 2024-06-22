import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/customer/product_details/data/data_source/product_details_data_source.dart';
import 'package:store_app/features/customer/product_details/data/models/product_details_response.dart';

class ProductDetailsRepo {
  final ProductDetailsDataSource _dataSource;

  ProductDetailsRepo(this._dataSource);

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
}
