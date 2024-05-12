import 'package:flutter/material.dart';
import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/core/networking/graphql_quries/admin/dashboard_queries.dart';
import 'package:store_app/features/admin/dashboard/data/models/category_number_response.dart';
import 'package:store_app/features/admin/dashboard/data/models/prodcut_number_response.dart';
import 'package:store_app/features/admin/dashboard/data/models/user_number_response.dart';

class DashBoardDataSource {
  final ApiService _apiService;

  DashBoardDataSource(this._apiService);
  // Number Of Products
  Future<ProductNumberResponse> numberOfProducts() async {
    final response = await _apiService
        .numberOfProdcuts(DashboardQueries().numberOfProductMapQuery());

    debugPrint('Product Number Response: ${response.data.products!.length}');
    return response;
  }

  // Number Of Categories
  Future<CategoriesNumberResonse> numberOfCategories() async {
    final response = await _apiService
        .numberOfCategories(DashboardQueries().numberOfCategoryMapQuery());
    debugPrint(
        'Categories Number Response: ${response.data!.categories!.length}');

    return response;
  }

  // Number Of Users
  Future<UsersNumberResponse> numberOfUsers() async {
    final response = await _apiService
        .numberOfUsers(DashboardQueries().numberOfUserMapQuery());
         debugPrint(
        'Users Number Response: ${response.data!.users!.length}');
    return response;
  }
}
