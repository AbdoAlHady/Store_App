import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/admin/add_products/data/data_source/product_admin_data_source.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';

class ProductAdminRepo {
  final ProductAdminDataSource _dataSource;

  ProductAdminRepo(this._dataSource);

  Future<ApiResult<GetAllProductsResponse>> getAllAdminProducts() async {
    try {
      final result = await _dataSource.getAllAdminProducts();
      return ApiResult.success(result);
    } catch (e) {
     return const ApiResult.failure(AppString.errorMessage);
    }
  }
}
