import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/features/auth/data/models/user_model.dart';

class ProfileDataSource {
  final ApiService _apiService;

  ProfileDataSource(this._apiService);

  // Get User Info
  Future<UserModel> getUserInfo() async {
    final response = await _apiService.getUserInfo();
    return response;
  }
}
