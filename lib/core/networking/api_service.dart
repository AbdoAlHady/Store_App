
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_app/core/networking/api_constans.dart';
import 'package:store_app/features/auth/data/models/login_response.dart';

import '../../features/auth/data/models/user_role.dart';
import '../app/upload_image/models/upload_image_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.graphql)
  Future<LoginResponse> login(@Body() Map<String, dynamic> mutation);

  @GET('/api/v1/auth/profile')
  Future<UserRole> getUserRole();

  @POST('/api/v1/files/upload')
  Future<UploadImageResponse> uploadImage(@Body() FormData file);
}
