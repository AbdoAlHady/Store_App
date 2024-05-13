import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/admin/add_categories/data/data_source/categories_admin_data_source.dart';
import 'package:store_app/features/admin/add_categories/data/models/categories_response_model.dart';

class CategoriesAdminRepo {
  final CategoriesAdminDataSource _dataSource;

  CategoriesAdminRepo(this._dataSource);

  // Get all categories
  Future<ApiResult<CategoriesResponse>> getAllCategoriesAdmin() async {
    try {
      final result = await _dataSource.getAllCategoriesAdmin();
      return ApiResult.success(result);
    } catch (e) {
      return const ApiResult.failure(AppString.errorMessage);
    }
  }
}
