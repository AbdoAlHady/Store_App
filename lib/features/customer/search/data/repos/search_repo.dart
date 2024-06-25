import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';
import 'package:store_app/features/customer/search/data/data_source/search_data_source.dart';
import 'package:store_app/features/customer/search/data/model/search_request_body.dart';

class  SearchRepo {
  final SearchDataSource _searchDataSource;

  SearchRepo(this._searchDataSource);

  Future<ApiResult<GetAllProductsResponse>> searchForProduct(SearchRequestBody bodu) async {
    try {
      final result = await _searchDataSource.searchForProduct(bodu);
      return ApiResult.success(result);
    } catch (e) {
      debugPrint(' searchCustomer error: $e');
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
  
}