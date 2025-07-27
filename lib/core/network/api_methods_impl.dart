import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_config.dart';
import 'api_error.dart';
import 'api_methods.dart';
import 'base_api_result.dart';
import 'error_type.dart';
import 'json_helper.dart';

class ApiMethodsImpl extends ApiMethods {
  ApiMethodsImpl() : super(requesterDio: ApiConfig.dio);

  @override
  BaseApiResult<T> handleResponseData<T>(Response response) {
    var responseData = response.data;

    if (responseData == null) {
      return BaseApiResult<T>(error: ApiError(type: ErrorType.unknownError));
    }
    return BaseApiResult<T>(
        data: responseData,
    );
  }

  @override
  BaseApiResult<T> handleResponseError<T>(DioException dioException) {
    debugPrint(dioException.response.toString());
    var responseData = dioException.response?.data;
    bool canParseResponseData = JsonHelper.canParseData(responseData);
    String? errorMessage;
    if (canParseResponseData && responseData is Map) {
      errorMessage = responseData['message'];
    } else {
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    }

    ErrorType? errorType = ErrorType.getTypeFromCode(
        statusCode: dioException.response?.statusCode
    );

    BaseApiResult<T> result = BaseApiResult(
        data: null,
        error: ApiError(
            message: errorMessage,
            type: errorType),
        );
    return result;
  }
}
