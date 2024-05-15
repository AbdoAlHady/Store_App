import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/core/networking/graphql_quries/admin/add_categories_queries.dart';
import 'package:store_app/features/admin/add_categories/data/models/categories_response_model.dart';
import 'package:store_app/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:store_app/features/admin/add_categories/data/models/create_category_response.dart';

class CategoriesAdminDataSource {
  final ApiService _apiService;

  CategoriesAdminDataSource(this._apiService);
  // Get all categories
  Future<CategoriesResponse> getAllCategoriesAdmin() async {
    final response = await _apiService
        .getAllCategories(CategoriesQueries().getAllCategoriesQuery());
    return response;
  }

  // Create  category
  Future<CreateCategoryResponse> createCategory(
      CreateCategoryRequestBody body) async {
    final response = await _apiService
        .createCategory(CategoriesQueries().addCategoriesQuery(body: body));
    return response;
  }
}
