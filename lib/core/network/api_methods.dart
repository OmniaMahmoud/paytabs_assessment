import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'api_error.dart';
import 'api_return_handler.dart';
import 'base_api_result.dart';
import 'error_type.dart';

abstract class ApiMethods extends ApiReturnHandler {
  final Dio requesterDio;

  ApiMethods({required this.requesterDio});

  Future<BaseApiResult<T>> get<T>(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    Response? response;
    try {
      debugPrint(url);
      debugPrint(params.toString());

      response = await requesterDio.get(url,
          queryParameters: params,
      );
      debugPrint(response.toString());
      return handleResponseData<T>(response);
    } on DioException catch (error) {
      return catchError(error);
    } catch (error) {
      debugPrint('catch error');
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    }
  }

  Future<BaseApiResult<T>> post<T>(
    String url, {
    Map<String, dynamic>? data,
  }) async {
    debugPrint(url);
    debugPrint(jsonEncode(data));
    Response? response;
    try {
      response = await requesterDio.post(url,
          data: data
      );

      debugPrint(response.toString());
      return handleResponseData<T>(response);
    } on DioException catch (error) {
      return catchError(error);
    } catch (error) {
      debugPrint('catch error');
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    }
  }

  Future<BaseApiResult<T>> put<T>(
    String url, {
    Map<String, dynamic>? data,
  }) async {
    debugPrint(url);
    debugPrint(data.toString());
    Response? response;
    try {
      response = await requesterDio.put(url,
          data: data
      );
      debugPrint(response.toString());
      return handleResponseData<T>(response);
    } on DioException catch (error) {
      return catchError(error);
    } catch (error) {
      debugPrint('catch error');
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    }
  }

  Future<BaseApiResult<T>> delete<T>(
    String url, {
    Map<String, dynamic>? data,
  }) async {
    Response? response;
    try {
      response = await requesterDio.delete(url,
          data: data
      );

      debugPrint(response.toString());
      return handleResponseData<T>(response);
    } on DioException catch (error) {
      return catchError(error);
    } catch (error) {
      debugPrint('catch error');
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    }
  }

  Future<BaseApiResult<T>> patch<T>(
    String url, {
    Map<String, dynamic>? data,
  }) async {
    debugPrint(url);
    debugPrint(data.toString());
    Response? response;
    try {
      response = await requesterDio.patch(url,
          data: data
      );

      debugPrint(response.toString());
      return handleResponseData<T>(response);
    } on DioException catch (error) {
      return catchError(error);
    } catch (error) {
      debugPrint('catch error');
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    }
  }
}
