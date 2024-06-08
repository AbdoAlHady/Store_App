import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:store_app/core/helper/cahec_helper.dart';
import 'package:store_app/core/helper/shared_prefrences_keys.dart';

import '../utils/app_logout.dart';

class DioFactroy {
  DioFactroy._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers['Authorization'] =
            'Bearer ${CacheHelper().getData(key: SharedPrefKeys.accessToken)}';
      // 'Bearer ${CacheHelper().getData(key: SharedPrefKeys.accessToken)}';
      // eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQsImlhdCI6MTcxNzg0NTc3MywiZXhwIjoxNzE5NTczNzczfQ.vymGl6-JP8zxtmtcoJFvdsnLdaiuAoZpwJgM9PjUdn0
      debugPrint(
          '[USER TOKEN]: ${CacheHelper().getData(key: SharedPrefKeys.accessToken) ?? 'No Token Found'}');
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
        requestBody: true, requestHeader: true, responseBody: true));
    dio?.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] =
            'Bearer ${CacheHelper().getData(key: SharedPrefKeys.accessToken)}';
        return handler.next(options);
      },
      onError: (error, handler)async {
        if(error.response?.statusCode == 400 || error.response?.statusCode == 401){
          await  AppLogout().logout();
        }
      },
    ));
  }
}
