import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';

import '../../../../../core/networking/graphql_quries/user/category_queries.dart';

class CategoryProductsDataSource {
  final ApiService _apiService;

  CategoryProductsDataSource(this._apiService);
  
  // Category Products
  Future<GetAllProductsResponse> getCategoryProducts(int categoryid) async {
    final response = await _apiService.getCategoryProducts(
        CategoryQueries().getCategoryProductsQuery(categoryid));
    return response;
  }
}
