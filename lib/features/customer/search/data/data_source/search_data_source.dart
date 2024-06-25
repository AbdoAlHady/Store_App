import 'package:store_app/core/networking/graphql_quries/user/search_queries.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';
import 'package:store_app/features/customer/search/data/model/search_request_body.dart';

import '../../../../../core/networking/api_service.dart';

class SearchDataSource {
  final ApiService _api;

  SearchDataSource(this._api);

  Future<GetAllProductsResponse> searchForProduct(
      SearchRequestBody body) async {
    final response = await _api
        .searchProducts(SearchQueries().searchProductQuery(body: body));
    return response;
  }
}
