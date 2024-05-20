import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_app/core/networking/api_constans.dart';
import 'package:store_app/features/admin/add_categories/data/models/categories_response_model.dart';
import 'package:store_app/features/admin/add_categories/data/models/create_category_response.dart';
import 'package:store_app/features/admin/dashboard/data/models/category_number_response.dart';
import 'package:store_app/features/admin/dashboard/data/models/prodcut_number_response.dart';
import 'package:store_app/features/auth/data/models/login_response.dart';
import 'package:store_app/features/auth/data/models/sign_up_response.dart';

import '../../features/admin/add_products/data/models/get_all_products_response.dart';
import '../../features/admin/dashboard/data/models/user_number_response.dart';
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

  @POST(ApiConstants.graphql)
  Future<SignUpResponse> signUp(@Body() Map<String, dynamic> mutation);

  @POST(ApiConstants.graphql)
  Future<ProductNumberResponse> numberOfProdcuts(
      @Body() Map<String, dynamic> query);

  @POST(ApiConstants.graphql)
  Future<CategoriesNumberResonse> numberOfCategories(
      @Body() Map<String, dynamic> query);

  @POST(ApiConstants.graphql)
  Future<UsersNumberResponse> numberOfUsers(@Body() Map<String, dynamic> query);

  @POST(ApiConstants.graphql)
  Future<CategoriesResponse> getAllCategories(
      @Body() Map<String, dynamic> query);

  @POST(ApiConstants.graphql)
  Future<CreateCategoryResponse> createCategory(
      @Body() Map<String, dynamic> mutation);

  @POST(ApiConstants.graphql)
  Future<void> deleteCategory(@Body() Map<String, dynamic> mutation);

  @POST(ApiConstants.graphql)
  Future<void>updateCategory(@Body() Map<String, dynamic> mutation);

 @POST(ApiConstants.graphql)
 Future<GetAllProductsResponse>getAllProducts(@Body() Map<String, dynamic> query);

  @POST(ApiConstants.graphql)
  Future<void>createProduct(@Body() Map<String, dynamic> mutation);
}
