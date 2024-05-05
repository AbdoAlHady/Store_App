import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:store_app/core/helper/cahec_helper.dart';
import 'package:store_app/core/helper/shared_prefrences_keys.dart';

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

        debugPrint('[USER TOKEN]: ${CacheHelper().getData(key: SharedPrefKeys.accessToken)?? 'No Token Found'}');
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
        requestBody: true, requestHeader: true, responseBody: true));
  }
}
