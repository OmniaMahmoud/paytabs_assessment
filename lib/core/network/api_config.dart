import 'dart:convert';

import 'package:dio/dio.dart';

import 'api_constants.dart';

class ApiConfig {
  static Dio dio = createDio();

  static Dio createDio() {
    Dio dio = Dio(BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10)));
    return dio;
  }
}