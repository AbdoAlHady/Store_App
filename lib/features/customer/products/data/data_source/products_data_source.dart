import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/core/networking/graphql_quries/user/products_queries.dart';
import 'package:store_app/features/customer/products/data/models/product_details_response.dart';

import '../../../../admin/add_products/data/models/get_all_products_response.dart';

class ProductsDataSource {
  final ApiService _apiService;

  ProductsDataSource(this._apiService);

  // Get Ptoduct Details
  Future<ProductDetailsResponse> getProuductDetails(int productId) async {
    final response = await _apiService.getProductDetails(
        ProductsQueries().productDetailsQuery(productId));
    return response;
  }
  // View All Products
  Future<GetAllProductsResponse> viewAllProducts(int offset) async {
    final response = await _apiService.viewAllProducts(
        ProductsQueries().viewAllProductsQuery(offset));
    return response;
  }
}
