import 'package:dio/dio.dart';
import 'api_error.dart';
import 'base_api_result.dart';
import 'error_type.dart';

abstract class ApiReturnHandler {

  BaseApiResult<T> catchError<T>(DioException dioException) {
    if (dioException.type == DioExceptionType.badResponse) {
      return handleResponseError<T>(dioException);
    } else {
      return handleDioError<T>(dioException);
    }
  }

  BaseApiResult<T> handleDioError<T>(DioException dioException) {
    if (dioException.type == DioExceptionType.connectionError) {
      return BaseApiResult(error: ApiError(type: ErrorType.connectionError));
    } else if (dioException.type == DioExceptionType.connectionTimeout) {
      return BaseApiResult(
          error: ApiError(type: ErrorType.connectionTimeoutError));
    } else if (dioException.type == DioExceptionType.receiveTimeout) {
      return BaseApiResult(
          error: ApiError(type: ErrorType.receiveTimeoutError));
    } else if (dioException.type == DioExceptionType.sendTimeout) {
      return BaseApiResult(error: ApiError(type: ErrorType.sendTimeoutError));
    } else if (dioException.type == DioExceptionType.badCertificate) {
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    } else if (dioException.type == DioExceptionType.cancel) {
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    } else if (dioException.type == DioExceptionType.unknown) {
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    } else {
      return BaseApiResult(error: ApiError(type: ErrorType.unknownError));
    }
  }

  BaseApiResult<T> handleResponseError<T>(DioException dioException);

  BaseApiResult<T> handleResponseData<T>(Response response);

}
