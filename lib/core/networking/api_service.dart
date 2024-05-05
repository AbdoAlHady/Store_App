
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:store_app/core/networking/api_constans.dart';

part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService{
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

}