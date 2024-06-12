import 'package:store_app/core/networking/graphql_quries/user/home_queries.dart';
import 'package:store_app/features/customer/home/data/models/banner_response.dart';

import '../../../../../core/networking/api_service.dart';

class HomeDataSource {
  final ApiService _apiService;

  HomeDataSource(this._apiService);

  // Get All Banners
  Future<BannersResponse> getAllBanners() async {
    final response =
        await _apiService.getAllBanners(Homequeries().bannersQuery());
    return response;
  }
}
