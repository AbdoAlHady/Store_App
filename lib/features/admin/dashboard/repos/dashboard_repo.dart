import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/admin/dashboard/data/data_source/dashboard_data_source.dart';
import 'package:store_app/features/admin/dashboard/data/models/category_number_response.dart';
import 'package:store_app/features/admin/dashboard/data/models/prodcut_number_response.dart';
import 'package:store_app/features/admin/dashboard/data/models/user_number_response.dart';

class DashboardRepo {
  final DashBoardDataSource _dashBoardDataSource;

  DashboardRepo(this._dashBoardDataSource);
  // Number Of Products
  Future<ApiResult<ProductNumberResponse>> numberOfProducts() async {
    try {
      final result = await _dashBoardDataSource.numberOfProducts();
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  // Number Of Categories
  Future<ApiResult<CategoriesNumberResonse>> numberOfCategories() async {
    try {
      final result = await _dashBoardDataSource.numberOfCategories();
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  // Number Of Users
  Future<ApiResult<UsersNumberResponse>> numberOfUsers() async {
    try {
      final result = await _dashBoardDataSource.numberOfUsers();
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
