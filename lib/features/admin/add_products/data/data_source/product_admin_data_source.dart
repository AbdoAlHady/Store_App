import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';

import '../../../../../core/networking/graphql_quries/admin/products_admin_queries.dart';

class ProductAdminDataSource {
  final ApiService _apiService;

  ProductAdminDataSource(this._apiService);
  Future<GetAllProductsResponse> getAllAdminProducts() async {
    final response = await _apiService.getAllProducts(ProductsAdminQueries().getAllProductsQuery());
    return response;
  }
}
