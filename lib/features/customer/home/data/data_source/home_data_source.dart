import 'package:store_app/core/networking/graphql_quries/user/home_queries.dart';
import 'package:store_app/features/customer/home/data/models/banner_response.dart';

import '../../../../../core/networking/api_service.dart';
import '../../../../../core/networking/graphql_quries/admin/add_categories_queries.dart';
import '../../../../admin/add_categories/data/models/categories_response_model.dart';

class HomeDataSource {
  final ApiService _apiService;

  HomeDataSource(this._apiService);

  // Get All Banners
  Future<BannersResponse> getAllBanners() async {
    final response =
        await _apiService.getAllBanners(Homequeries().bannersQuery());
    return response;
  }

  // Get All Categories
  Future<CategoriesResponse> getAllCategoriesAdmin() async {
    final response = await _apiService
        .getAllCategories(CategoriesQueries().getAllCategoriesQuery());
    return response;
  }
}
