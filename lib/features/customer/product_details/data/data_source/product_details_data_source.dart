import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/core/networking/graphql_quries/user/product_details_queries.dart';
import 'package:store_app/features/customer/product_details/data/models/product_details_response.dart';

class ProductDetailsDataSource {
  final ApiService _apiService;

  ProductDetailsDataSource(this._apiService);

  // Get Ptoduct Details

  Future<ProductDetailsResponse> getProuductDetails(int productId) async {
    final response = await _apiService.getProductDetails(
        ProductDetailsQueries().productDetailsQuery(productId));
    return response;
  }
}
